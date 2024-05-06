import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ZHomeBanner extends StatelessWidget {
  const ZHomeBanner({
    super.key,
    this.title = 'New Courses!',
    this.subtitle = 'I am working right now',
    this.buttonTitle = 'View now',
    this.onTap,
  });

  final String title, subtitle, buttonTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ZRoundedContainer(
      radius: 6,
      width: double.infinity,
      backgroundColor: ZColors.primary,
      padding: const EdgeInsets.all(ZSizes.md),
      child: Stack(
        children: [
          /// Banner Image
          const Positioned(
            top: 8,
            right: -16,
            child: Image(image: AssetImage(ZImages.bannerImage)),
          ),

          /// Text & Button
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Text
              Text(title, style: const TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold)),
              Text(subtitle, style: const TextStyle(fontSize: 16, color: Colors.white)),
              const SizedBox(height: ZSizes.sm),

              /// Button
              ZRoundedContainer(
                radius: 6,
                backgroundColor: ZColors.pink,
                padding: const EdgeInsets.symmetric(vertical: ZSizes.xs, horizontal: ZSizes.sm),
                child: GestureDetector(
                  onTap: onTap,
                  child: Text(buttonTitle, style: const TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
