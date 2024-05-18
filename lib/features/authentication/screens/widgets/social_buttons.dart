import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class ZSocialButtons extends StatelessWidget {
  const ZSocialButtons({
    super.key,
    this.onPressed,
    required this.image,
    required this.text,
  });

  final VoidCallback? onPressed;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(width: ZSizes.spaceBetweenItems),
            Expanded(
              child: Text(text, textAlign: TextAlign.center),
            )
          ],
        ),
      ),
    );
  }
}
