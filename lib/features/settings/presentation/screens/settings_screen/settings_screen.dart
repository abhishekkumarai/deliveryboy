import 'package:flutter/material.dart';

import '../../../../../core/presentation/widgets/responsive_widgets/responsive_layouts.dart';
import 'settings_screen_compact.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowClassLayout(
      compact: (_) => const SettingsScreenCompact(),
      medium: (_) => const SettingsScreenCompact(),
      expanded: (_) => const SettingsScreenCompact(),
    );
  }
}
