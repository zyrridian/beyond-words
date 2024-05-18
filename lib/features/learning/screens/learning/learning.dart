import 'package:beyond_words/features/learning/screens/learning/learning_basic.dart';
import 'package:beyond_words/features/learning/screens/learning/widgets/learning_card.dart';
import 'package:beyond_words/features/learning/screens/learning/widgets/learning_header.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const ZLearningHeader(),

            /// Cards
            Padding(
              padding: const EdgeInsets.only(
                left: ZSizes.defaultSpace,
                right: ZSizes.defaultSpace,
                top: ZSizes.defaultSpace / 4,
                bottom: ZSizes.defaultSpace * 5,
              ),
              child: Column(
                children: [
                  /// Food & Emergency
                  SizedBox(
                    height: 200,
                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ZLearningCard(
                          title: 'Food',
                          image: ZImages.food,
                          onTap: () {},
                        ),
                        ZLearningCard(
                          title: 'Emergency',
                          image: ZImages.emergency,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),

                  /// Course Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Beginner Courses',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      TextButton(onPressed: () {}, child: const Text('see all'))
                    ],
                  ),

                  /// Course Cards
                  SizedBox(
                    height: 250,
                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ZLearningCard(
                          title: 'Basic 1',
                          image: ZImages.basic,
                          onTap: () => Get.to(() => const LearningBasicScreen()),
                        ),
                        ZLearningCard(
                          title: 'Family',
                          image: ZImages.family,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),

                  // ZLearningFoodEmergency(),
                  // SizedBox(height: ZSizes.spaceBetweenItems),
                  //
                  // /// Courses
                  // ZLearningCourses(),
                  // SizedBox(height: ZSizes.spaceBetweenItems / 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
