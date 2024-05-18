import 'package:beyond_words/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:beyond_words/utils/constants/colors.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZLearningCard extends StatelessWidget {
  const ZLearningCard({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  final String title, image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ZRoundedContainer(
        height: 160,
        padding: const EdgeInsets.symmetric(vertical: ZSizes.lg, horizontal: ZSizes.md),
        backgroundColor: ZColors.lightBlue,
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: ZSizes.spaceBetweenItems),
            Expanded(child: Image(image: AssetImage(image)))
          ],
        ),
      ),
    );
  }
}
