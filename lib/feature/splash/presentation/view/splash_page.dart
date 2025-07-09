import 'package:flutter/material.dart';
import 'package:flutter_template/core/extension/extension.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.primary,
      body: const Center(
        child: FlutterLogo(size: 210),
      ),
    );
  }
}
