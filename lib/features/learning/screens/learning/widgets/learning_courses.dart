import 'package:flutter/material.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../utils/constants/image_strings.dart';
import 'learning_card.dart';

class ZLearningCourses extends StatelessWidget {
  const ZLearningCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// Card Data
    List<Map<String, String>> coursesData = [
      {'title': 'Basic 1', 'image': ZImages.basic},
      {'title': 'Family', 'image': ZImages.family},
    ];

    return Column(
      children: [
        /// Header
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

        /// Cards
        ZGridLayout(
          itemCount: coursesData.length,
          mainAxisExtent: 180,
          itemBuilder: (_, index) {
            final Map<String, String> data = coursesData[index];
            return ZLearningCard(
              title: data['title'] ?? '',
              image: data['image'] ?? '',
            );
          },
        ),
      ],
    );
  }
}
