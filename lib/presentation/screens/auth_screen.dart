import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

const _paddingH = 24.0;
const _paddingV = 48.0;

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: _paddingH,
              vertical: _paddingV,
            ),
            child: Column(
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
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    suffixIcon: IconButton(
                      icon: Assets.icons.hide.svg(),
                      onPressed: () {},
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
                        onPressed: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: const Text('Войти'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
