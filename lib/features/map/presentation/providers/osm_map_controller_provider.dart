import 'package:flutter_map/flutter_map.dart';

import '../../../../core/presentation/providers/provider_utils.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';

part 'osm_map_controller_provider.g.dart';

@riverpod
class OsmMapControllerProvider extends _$OsmMapControllerProvider with NotifierUpdate {
  @override
  MapController? build() => null;
}
