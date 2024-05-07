import 'package:beyond_words/features/learning/screens/learning/learning_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ZLearningBasicCard extends StatelessWidget {
  const ZLearningBasicCard({
    super.key,
    required this.image,
    required this.title,
    this.backgroundColor = ZColors.lightBlue,
    this.widthFactor = 1,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final String image, title;
  final Color backgroundColor;
  final double widthFactor;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const LearningDetailScreen()),
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        child: ZRoundedContainer(
          radius: 9,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: ZSizes.md, horizontal: ZSizes.lg),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              ImageIcon(AssetImage(image)),
              const SizedBox(width: ZSizes.spaceBetweenItems),
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
            ],
          ),
        ),
      ),
    );
  }
}
