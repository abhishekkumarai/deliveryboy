import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart' hide LatLngBounds;
import 'package:latlong2/latlong.dart' as ll;

import '../../../../core/core_features/theme/presentation/providers/current_app_theme_provider.dart';
import '../../../../core/core_features/theme/presentation/utils/app_static_colors.dart';
import '../../../../core/core_features/theme/presentation/utils/app_theme.dart';
import '../../../../core/presentation/utils/fp_framework.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../home/presentation/providers/location_stream_provider.dart';
import '../../domain/place_directions.dart';
import '../providers/osm_map_controller_provider.dart';
import '../providers/target_location_providers/target_location_directions_provider.dart';
import '../providers/target_location_providers/target_location_geo_point_provider.dart';

class OsmMapComponent extends StatefulHookConsumerWidget {
  const OsmMapComponent({super.key});

  @override
  ConsumerState<OsmMapComponent> createState() => _OsmMapComponentState();
}

class _OsmMapComponentState extends ConsumerState<OsmMapComponent> {
  final MapController _mapController = MapController();

  static const String _osmLightTileUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  static const String _osmDarkTileUrl = 'https://basemaps.cartocdn.com/rastertiles/dark_all/{z}/{x}/{y}.png';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(osmMapControllerProviderProvider.notifier).update((_) => _mapController);
    });
  }

  void _fitPoints(List<ll.LatLng> points) {
    if (points.isEmpty) return;
    if (points.length == 1) {
      _mapController.move(points.first, 15);
      return;
    }
    _mapController.fitCamera(
      CameraFit.coordinates(
        coordinates: points,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
        maxZoom: 17,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = ref.watch(currentAppThemeModeProvider) == AppThemeMode.dark;
    final driverPosition = ref.watch(locationStreamProvider).valueOrNull;
    final targetGeoPoint = ref.watch(targetLocationGeoPointProvider);
    final directionsOption = ref.watch(targetLocationDirectionsProvider);

    // Listen for direction updates to automatically fit camera
    ref.listen<Option<PlaceDirections>>(
      targetLocationDirectionsProvider,
      (previous, next) {
        if (next is Some<PlaceDirections>) {
          final pts = next.value.polylinePoints
              .map((p) => ll.LatLng(p.latitude, p.longitude))
              .toList();
          if (pts.isNotEmpty) {
            _fitPoints(pts);
          }
        }
      },
    );

    final initialCenter = driverPosition != null
        ? ll.LatLng(driverPosition.latitude, driverPosition.longitude)
        : const ll.LatLng(30.0444, 31.2357);

    // Build markers
    final markers = <Marker>[];

    // 1. Driver Marker
    if (driverPosition != null) {
      markers.add(
        Marker(
          point: ll.LatLng(driverPosition.latitude, driverPosition.longitude),
          width: 48,
          height: 48,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Icon(
              Icons.navigation,
              color: AppStaticColors.blue,
              size: 28,
            ),
          ),
        ),
      );
    }

    // 2. Destination Marker
    targetGeoPoint.fold(
      () {},
      (geoPoint) {
        markers.add(
          Marker(
            point: ll.LatLng(geoPoint.latitude, geoPoint.longitude),
            width: 48,
            height: 48,
            child: const Icon(
              Icons.location_on,
              color: Colors.redAccent,
              size: 42,
            ),
          ),
        );
      },
    );

    // Build polylines
    final polylines = <Polyline>[];
    directionsOption.fold(
      () {},
      (directions) {
        final pts = directions.polylinePoints
            .map((p) => ll.LatLng(p.latitude, p.longitude))
            .toList();
        if (pts.isNotEmpty) {
          polylines.add(
            Polyline(
              points: pts,
              strokeWidth: 5,
              color: AppStaticColors.blue,
            ),
          );
        }
      },
    );

    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: initialCenter,
        initialZoom: 15,
      ),
      children: [
        TileLayer(
          urlTemplate: isDark ? _osmDarkTileUrl : _osmLightTileUrl,
          userAgentPackageName: 'com.appzler.deliveryboy',
        ),
        if (driverPosition != null)
          CircleLayer(
            circles: [
              CircleMarker(
                point: ll.LatLng(driverPosition.latitude, driverPosition.longitude),
                radius: 40,
                color: AppStaticColors.blue.withValues(alpha: 0.15),
                borderColor: AppStaticColors.blue.withValues(alpha: 0.4),
                borderStrokeWidth: 1.5,
              ),
            ],
          ),
        if (polylines.isNotEmpty) PolylineLayer(polylines: polylines),
        if (markers.isNotEmpty) MarkerLayer(markers: markers),
        const SimpleAttributionWidget(
          source: Text('© OpenStreetMap contributors'),
        ),
      ],
    );
  }
}
