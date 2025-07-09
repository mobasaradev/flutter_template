import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/extension/extension.dart';

import '../riverpod/login_provider.dart';

part '../widgets/login_form.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginControllerProvider);
    final loginNotifier = ref.read(loginControllerProvider.notifier);

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: loginState.when(
          data: (user) => user != null
              ? Center(child: Text('Welcome ${user.email}'))
              : _LoginForm(
                  emailController: emailController,
                  passwordController: passwordController,
                  onSubmit: () {
                    loginNotifier.login(
                      emailController.text.trim(),
                      passwordController.text.trim(),
                    );
                  },
                ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Error: $e",
                style: context.textStyle.bodyMedium.copyWith(
                  color: context.color.warning,
                ),
              ),
              const SizedBox(height: 16),
              _LoginForm(
                emailController: emailController,
                passwordController: passwordController,
                onSubmit: () {
                  loginNotifier.login(
                    emailController.text.trim(),
                    passwordController.text.trim(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
