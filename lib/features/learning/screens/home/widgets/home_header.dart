import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class ZHomeHeader extends StatelessWidget {
  const ZHomeHeader({
    super.key,
    required this.user,
    this.subtitle = "Let's sign today for tomorrow",
  });

  final String user, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: ZSizes.spaceBetweenItems),
        Text('Hello, $user', style: Theme.of(context).textTheme.headlineLarge),
        Text(subtitle, style: const TextStyle(fontSize: 18, color: Colors.grey)),
      ],
    );
  }
}
