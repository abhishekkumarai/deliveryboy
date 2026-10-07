import 'package:flutter/material.dart';

import '../../../../../core/presentation/helpers/localization_helper.dart';
import '../../../../../core/presentation/screens/nested_screen_scaffold.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../core/presentation/widgets/loading_widgets.dart';
import '../../components/retry_again_component.dart';
import '../../components/upcoming_orders_component.dart';
import '../../providers/location_stream_provider.dart';
import '../../providers/update_delivery_geo_point_provider.dart';
import '../../utils/location_error.dart';

import '../../../../delivery_agent/presentation/screens/active_delivery_task_screen.dart';

class HomeScreenCompact extends HookConsumerWidget {
  const HomeScreenCompact({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(updateDeliveryGeoPointStateProvider, (previous, next) {});

    return const NestedScreenScaffold(
      body: ActiveDeliveryTaskScreen(),
    );
  }
}
