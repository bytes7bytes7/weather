import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/blocs/auth/auth_bloc.dart';
import '../../gen/assets.gen.dart';
import '../presentation.dart';

const _paddingH = 24.0;
const _paddingV = 48.0;

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: _paddingH,
              vertical: _paddingV,
            ),
            child: _Body(),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scaffoldMsg = ScaffoldMessenger.of(context);
    final bloc = context.read<AuthBloc>();

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.error.isNotEmpty) {
          scaffoldMsg.showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Вход',
                  style: theme.textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Введите данные для входа',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 44,
                ),
                TextField(
                  onChanged: (v) {
                    bloc.add(AuthEvent.setEmail(email: v));
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: state.emailError,
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                TextField(
                  obscureText: state.obscurePassword,
                  onChanged: (v) {
                    bloc.add(AuthEvent.setPassword(password: v));
                  },
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    suffixIcon: IconButton(
                      icon: state.obscurePassword
                          ? Assets.icons.hide.svg()
                          : Assets.icons.show.svg(),
                      onPressed: () {
                        bloc.add(const AuthEvent.switchObscuringPassword());
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: state.canAuthenticate
                            ? () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                bloc.add(const AuthEvent.authenticate());
                              }
                            : null,
                        child: const Text('Войти'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (state.isLoading) const LoadingOverlay(),
          ],
        );
      },
    );
  }
}
