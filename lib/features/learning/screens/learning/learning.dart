import 'package:beyond_words/features/learning/screens/learning/widgets/learning_courses.dart';
import 'package:beyond_words/features/learning/screens/learning/widgets/learning_food_emergency.dart';
import 'package:beyond_words/features/learning/screens/learning/widgets/learning_header.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            ZLearningHeader(),

            /// Cards
            Padding(
              padding: EdgeInsets.only(
                left: ZSizes.defaultSpace,
                right: ZSizes.defaultSpace,
                top: ZSizes.defaultSpace,
                bottom: ZSizes.defaultSpace * 5,
              ),
              child: Column(
                children: [
                  /// Food & Emergency
                  ZLearningFoodEmergency(),
                  SizedBox(height: ZSizes.spaceBetweenItems),

                  /// Courses
                  ZLearningCourses(),
                  SizedBox(height: ZSizes.spaceBetweenItems / 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
