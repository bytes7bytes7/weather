import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../application/blocs/auth/auth_bloc.dart';
import '../../application/blocs/splash/splash_bloc.dart';
import '../../themes/extensions/color_scheme_tx.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;
    final authBloc = context.read<AuthBloc>();

    return BlocProvider<SplashBloc>(
      create: (context) =>
          GetIt.instance.get<SplashBloc>()..add(const SplashEvent.init()),
      child: BlocBuilder<SplashBloc, SplashState>(
        builder: (context, state) {
          if (state.isInitialized) {
            authBloc.add(const AuthEvent.init());
          }

          return DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  colorSchemeTX.gradientPrimary,
                  colorSchemeTX.gradientSecondary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 43,
                  ),
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 4,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'WEATHER\nSERVICE',
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      Text(
                        state.greeting,
                        style: theme.textTheme.displaySmall,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
