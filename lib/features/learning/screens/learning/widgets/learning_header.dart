import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/styles/shadows.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ZLearningHeader extends StatelessWidget {
  const ZLearningHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(image: AssetImage(ZImages.background)),
        Padding(
          padding: const EdgeInsets.only(
            left: ZSizes.defaultSpace,
            right: ZSizes.defaultSpace,
            top: ZSizes.defaultSpace * 2,
            bottom: ZSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      shadows: [ZShadowStyle.textShadow],
                    ),
                  ),
                  ZRoundedContainer(
                    backgroundColor: Colors.white,
                    radius: 100,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.search_favorite),
                    ),
                  )
                ],
              ),
              const Text(
                'Suggested for You',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  shadows: [ZShadowStyle.textShadow],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
