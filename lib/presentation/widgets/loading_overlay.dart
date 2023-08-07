import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: AbsorbPointer(
        absorbing: true,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.background.withOpacity(0.4),
          ),
          child: const LoadingIndicator(),
        ),
      ),
    );
  }
}
