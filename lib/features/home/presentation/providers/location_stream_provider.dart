import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/infrastructure/services/location_service.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../utils/location_error.dart';

part 'location_stream_provider.g.dart';

@riverpod
Stream<Position> locationStream(
  LocationStreamRef ref,
) async* {
  if (kIsWeb) {
    yield Position(
      longitude: 31.2357,
      latitude: 30.0444,
      timestamp: DateTime.now(),
      accuracy: 10,
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0,
      altitudeAccuracy: 0,
      headingAccuracy: 0,
    );
    yield* Stream.periodic(
      const Duration(seconds: AppLocationSettings.locationChangeInterval),
      (_) => Position(
        longitude: 31.2357,
        latitude: 30.0444,
        timestamp: DateTime.now(),
        accuracy: 10,
        altitude: 0,
        heading: 0,
        speed: 0,
        speedAccuracy: 0,
        altitudeAccuracy: 0,
        headingAccuracy: 0,
      ),
    );
    return;
  }

  final locationService = ref.watch(locationServiceProvider);

  await ref.watch(enableLocationProvider(locationService).future);
  await ref.watch(requestLocationPermissionProvider(locationService).future);

  yield* Geolocator.getPositionStream(
    locationSettings: locationService.getLocationSettings(),
    //Throttling location's stream as intervalDuration is not supported on iOS
  ).throttleTime(const Duration(seconds: AppLocationSettings.locationChangeInterval)).handleError(
    (Object err, StackTrace st) {
      Error.throwWithStackTrace(LocationError.getLocationTimeout, st);
    },
  );
}

@riverpod
Future<void> enableLocation(
  EnableLocationRef ref,
  LocationService locationService,
) async {
  if (kIsWeb) return;
  final enabled = await locationService.enableLocationService();
  if (!enabled) {
    Error.throwWithStackTrace(
      LocationError.notEnabledLocation,
      StackTrace.current,
    );
  }
}

@riverpod
Future<void> requestLocationPermission(
  RequestLocationPermissionRef ref,
  LocationService locationService,
) async {
  if (kIsWeb) return;
  final whileInUseGranted = await locationService.requestWhileInUsePermission();
  if (!whileInUseGranted) {
    Error.throwWithStackTrace(
      LocationError.notGrantedLocationPermission,
      StackTrace.current,
    );
  }

  if (!kIsWeb && Platform.isAndroid) {
    final alwaysGranted = await locationService.requestAlwaysPermission();
    if (!alwaysGranted) {
      Error.throwWithStackTrace(
        LocationError.notGrantedLocationPermission,
        StackTrace.current,
      );
    }
  }
}
