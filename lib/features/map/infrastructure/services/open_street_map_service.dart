import 'dart:math' as math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../dtos/place_autocomplete_dto.dart';
import '../dtos/place_details_dto.dart';
import '../dtos/place_directions_dto.dart';

part 'open_street_map_service.g.dart';

@Riverpod(keepAlive: true)
OpenStreetMapService openStreetMapService(OpenStreetMapServiceRef ref) {
  return OpenStreetMapService();
}

class OpenStreetMapService {
  OpenStreetMapService({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  Future<List<PlaceAutocompleteDto>> getPlaceAutocomplete(
    String placeName, {
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get<List<dynamic>>(
      'https://nominatim.openstreetmap.org/search',
      queryParameters: {
        'q': placeName,
        'format': 'json',
        'addressdetails': 1,
        'limit': 5,
      },
      options: Options(
        headers: {'User-Agent': 'DeliveryBoy/1.0 (https://deliverzler.web.app)'},
      ),
      cancelToken: cancelToken,
    );

    final results = <PlaceAutocompleteDto>[];
    for (final item in response.data ?? []) {
      final map = item as Map<String, dynamic>;
      final lat = map['lat']?.toString() ?? '0';
      final lon = map['lon']?.toString() ?? '0';
      final name = map['name']?.toString() ?? map['display_name']?.toString() ?? '';
      final displayName = map['display_name']?.toString() ?? '';

      results.add(
        PlaceAutocompleteDto(
          placeId: '$lat,$lon',
          description: displayName,
          mainText: name.isNotEmpty ? name : displayName,
          secondaryText: displayName,
        ),
      );
    }
    return results;
  }

  Future<PlaceDetailsDto> getPlaceDetails(
    String placeId, {
    CancelToken? cancelToken,
  }) async {
    final parts = placeId.split(',');
    if (parts.length == 2) {
      final lat = double.tryParse(parts[0]);
      final lon = double.tryParse(parts[1]);
      if (lat != null && lon != null) {
        return PlaceDetailsDto(geoPoint: GeoPoint(lat, lon));
      }
    }

    return const PlaceDetailsDto(geoPoint: GeoPoint(30.0444, 31.2357));
  }

  Future<PlaceDirectionsDto> getPlaceDirections(
    PlaceDirectionsQueryDto query, {
    CancelToken? cancelToken,
  }) async {
    final originLng = query.origin.longitude;
    final originLat = query.origin.latitude;
    final destLng = query.destination.latitude > 90 ? query.destination.latitude : query.destination.longitude;
    final destLat = query.destination.latitude > 90 ? query.destination.longitude : query.destination.latitude;

    final url =
        'https://router.project-osrm.org/route/v1/driving/$originLng,$originLat;$destLng,$destLat?overview=full&geometries=geojson';

    try {
      final response = await _dio.get<Map<String, dynamic>>(
        url,
        cancelToken: cancelToken,
      );

      final data = response.data;
      final routes = data?['routes'] as List<dynamic>?;
      if (routes == null || routes.isEmpty) {
        return _buildDirectLineFallback(query);
      }

      final route = routes[0] as Map<String, dynamic>;
      final geometry = route['geometry'] as Map<String, dynamic>;
      final coordinates = geometry['coordinates'] as List<dynamic>;

      final polylinePoints = <PointLatLng>[];
      var minLat = 90.0, maxLat = -90.0, minLng = 180.0, maxLng = -180.0;

      for (final dynamic item in coordinates) {
        final coord = item as List<dynamic>;
        final lng = (coord[0] as num).toDouble();
        final lat = (coord[1] as num).toDouble();
        polylinePoints.add(PointLatLng(lat, lng));
        minLat = math.min(minLat, lat);
        maxLat = math.max(maxLat, lat);
        minLng = math.min(minLng, lng);
        maxLng = math.max(maxLng, lng);
      }

      final distanceMeters = (route['distance'] as num).round();
      final durationSeconds = (route['duration'] as num).round();
      final durationMins = (durationSeconds / 60).round();
      final durationText = durationMins > 0 ? '$durationMins mins' : '< 1 min';

      return PlaceDirectionsDto(
        bounds: LatLngBounds(
          southwest: LatLng(minLat, minLng),
          northeast: LatLng(maxLat, maxLng),
        ),
        polylinePoints: polylinePoints,
        distance: distanceMeters,
        duration: durationText,
      );
    } catch (_) {
      return _buildDirectLineFallback(query);
    }
  }

  PlaceDirectionsDto _buildDirectLineFallback(PlaceDirectionsQueryDto query) {
    final lat1 = query.origin.latitude;
    final lng1 = query.origin.longitude;
    final lat2 = query.destination.latitude;
    final lng2 = query.destination.longitude;

    return PlaceDirectionsDto(
      bounds: LatLngBounds(
        southwest: LatLng(math.min(lat1, lat2), math.min(lng1, lng2)),
        northeast: LatLng(math.max(lat1, lat2), math.max(lng1, lng2)),
      ),
      polylinePoints: [PointLatLng(lat1, lng1), PointLatLng(lat2, lng2)],
      distance: 1000,
      duration: '5 mins',
    );
  }
}
