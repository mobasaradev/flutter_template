import 'package:flutter/material.dart';
import 'package:flutter_template/core/extension/extension.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.success,
      body: Center(
        child: Text(
          "Splash Page",
          style: context.textStyle.bodyLarge.copyWith(
            color: context.color.primary,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
