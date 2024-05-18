import 'package:beyond_words/common/widgets/appbar/appbar.dart';
import 'package:beyond_words/features/learning/screens/learning/widgets/learning_basic_card.dart';
import 'package:beyond_words/utils/constants/colors.dart';
import 'package:beyond_words/utils/constants/image_strings.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'learning_detail.dart';

class LearningBasicScreen extends StatelessWidget {
  const LearningBasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ZAppBar(showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.only(
          left: ZSizes.defaultSpace,
          right: ZSizes.defaultSpace,
          top: 0,
          bottom: ZSizes.defaultSpace,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            const Text(
              'Learn the basics',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: ZSizes.spaceBetweenItems),

            /// Cards
            Column(
              children: [
                ZLearningBasicCard(
                  image: ZImages.basic1,
                  title: 'Hello world!',
                  onTap: () => Get.to(() => const LearningDetailScreen()),
                ),
                const SizedBox(height: ZSizes.spaceBetweenItems),
                ZLearningBasicCard(
                  image: ZImages.basic2,
                  title: 'That, over there.',
                  onTap: () {},
                ),
                const SizedBox(height: ZSizes.spaceBetweenItems),
                ZLearningBasicCard(
                  image: ZImages.basic3,
                  title: "Let's do something!",
                  onTap: () {},
                ),
                const SizedBox(height: ZSizes.spaceBetweenItems),
                ZLearningBasicCard(
                  image: ZImages.basic4,
                  title: "I'm feeling happy!",
                  onTap: () {},
                ),
                const SizedBox(height: ZSizes.spaceBetweenItems),
              ],
            ),

            /// Quiz Card
            const Center(
              child: ZLearningBasicCard(
                image: ZImages.basic5,
                title: 'Quiz Time!',
                backgroundColor: ZColors.lightPink,
                widthFactor: 0.8,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            const SizedBox(height: ZSizes.spaceBetweenItems)
          ],
        ),
      ),
    );
  }
}
