part of '../providers/device_info_providers.dart';

extension AndroidDeviceInfoX on AsyncValue<Option<AndroidDeviceInfo>> {
  // https://developer.android.com/develop/ui/views/touch-and-input/gestures/gesturenav
  // https://github.com/flutter/flutter/pull/81303
  bool get supportsEdgeToEdge {
    return valueOrNull?.match(() => true, (info) => info.version.sdkInt >= 29) ?? true;
  }
}
