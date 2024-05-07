import 'package:beyond_words/common/widgets/appbar/appbar.dart';
import 'package:beyond_words/features/learning/screens/learning/widgets/learning_basic_card.dart';
import 'package:beyond_words/utils/constants/colors.dart';
import 'package:beyond_words/utils/constants/image_strings.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LearningBasic extends StatelessWidget {
  const LearningBasic({super.key});

  @override
  Widget build(BuildContext context) {
    /// Card Data
    final List<Map<String, dynamic>> basicCards = [
      {'image': ZImages.basic1, 'title': 'Hello world!'},
      {'image': ZImages.basic2, 'title': 'That, over there.'},
      {'image': ZImages.basic3, 'title': "Let's do something!"},
      {'image': ZImages.basic4, 'title': "I'm feeling happy!"},
    ];

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
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: basicCards.length,
              itemBuilder: (context, index) {
                final card = basicCards[index];
                return Column(
                  children: [
                    ZLearningBasicCard(
                        image: card['image'], title: card['title']),
                    const SizedBox(height: ZSizes.spaceBetweenItems)
                  ],
                );
              },
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
