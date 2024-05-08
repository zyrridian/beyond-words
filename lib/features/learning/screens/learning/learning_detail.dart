import 'package:beyond_words/common/widgets/appbar/appbar.dart';
import 'package:beyond_words/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:beyond_words/common/widgets/video/video_player.dart';
import 'package:beyond_words/utils/constants/colors.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class LearningDetailScreen extends StatelessWidget {
  const LearningDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(
        showBackArrow: true,
        title: const Text(
          'Learn the basics',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_outline))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: ZSizes.defaultSpace,
            right: ZSizes.defaultSpace,
            top: ZSizes.defaultSpace / 2,
            bottom: ZSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Video Player
              const ZVideoPlayer(),
              const SizedBox(height: ZSizes.spaceBetweenItems),

              /// Title
              const Text('Hello World!',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: ZSizes.spaceBetweenItems / 4),
              const Text('Greetings and Responses',
                  style: TextStyle(fontWeight: FontWeight.w300)),
              const SizedBox(height: ZSizes.spaceBetweenItems / 4),

              /// Like Dislike
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Iconsax.like_1),
                      SizedBox(width: ZSizes.xs),
                      Text('255'),
                      SizedBox(width: ZSizes.md),
                      Icon(Iconsax.dislike),
                      SizedBox(width: ZSizes.xs),
                      Text('1'),
                    ],
                  ),
                  Row(
                    children: [
                      ZRoundedContainer(
                        backgroundColor: ZColors.lightBlue,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.like_1),
                        ),
                      ),
                      const SizedBox(width: ZSizes.spaceBetweenItems / 2),
                      ZRoundedContainer(
                        backgroundColor: ZColors.lightPink,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.dislike),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: ZSizes.spaceBetweenItems / 2),

              /// Divider
              const Divider(color: ZColors.darkGrey, thickness: 0.5),
              const SizedBox(height: ZSizes.spaceBetweenItems / 2),

              /// Description
              const Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: ZSizes.spaceBetweenItems / 2),
              const ReadMoreText(
                'Greetings, Farewells and Introductions are among the first signs one needs to know when communicating in ASL, American Sign Language. You’ll use these signs in nearly every ASL conversation you’ll have. There are about 25 signs that we go over in this video before learning a few sentences that you can immediately take with you. We’ll even cover some slang',
                trimLength: 250,
                trimCollapsedText: ' show more',
                trimExpandedText: ' show less',
                moreStyle: TextStyle(color: ZColors.pink, fontWeight: FontWeight.bold),
                lessStyle: TextStyle(color: ZColors.pink, fontWeight: FontWeight.bold),
                style: TextStyle(fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
