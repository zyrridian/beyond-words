import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class ZAccountButton extends StatelessWidget {
  const ZAccountButton({
    super.key,
    this.onPressed,
    required this.title,
    required this.subtitle,
  });

  final VoidCallback? onPressed;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        const SizedBox(width: ZSizes.spaceBetweenItems / 3),
        TextButton(onPressed: onPressed, child: Text(subtitle)),
      ],
    );
  }
}
