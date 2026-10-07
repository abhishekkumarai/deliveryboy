import 'package:flutter/material.dart';

import '../../../../core/presentation/utils/riverpod_framework.dart';
import 'osm_map_component.dart';

class GoogleMapComponent extends HookConsumerWidget {
  const GoogleMapComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const OsmMapComponent();
  }
}
