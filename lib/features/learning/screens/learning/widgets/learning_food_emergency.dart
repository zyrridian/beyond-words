import 'package:flutter/material.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../utils/constants/image_strings.dart';
import 'learning_card.dart';

class ZLearningFoodEmergency extends StatelessWidget {
  const ZLearningFoodEmergency({super.key});

  @override
  Widget build(BuildContext context) {
    /// Card Data
    List<Map<String, String>> cardData = [
      {'title': 'Food', 'image': ZImages.food},
      {'title': 'Emergency', 'image': ZImages.emergency},
    ];

    return ZGridLayout(
      itemCount: cardData.length,
      mainAxisExtent: 180,
      itemBuilder: (_, index) {
        final Map<String, String> data = cardData[index];
        return ZLearningCard(
          title: data['title'] ?? '',
          image: data['image'] ?? '',
        );
      },
    );
  }
}
