import 'package:flutter/material.dart';
import 'package:flutter_template/core/extension/extension.dart';

class LinkText extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final String linkText;

  const LinkText({
    super.key,
    required this.text,
    required this.linkText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: onTap,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: text,
            style: context.textStyle.labelLarge.copyWith(
             color: context.color.primary,
            ),
            children: [
              TextSpan(
                text: linkText,
                style: context.textStyle.labelLarge.copyWith(
             color: context.color.success,
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
