import 'package:beyond_words/common/styles/spacing_styles.dart';
import 'package:beyond_words/features/learning/screens/home/widgets/home_banner.dart';
import 'package:beyond_words/features/learning/screens/home/widgets/home_calendar.dart';
import 'package:beyond_words/features/learning/screens/home/widgets/home_header.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ZSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              ZHomeHeader(user: 'Ashley'),
              SizedBox(height: ZSizes.spaceBetweenSections),

              /// Banner
              ZHomeBanner(),
              SizedBox(height: ZSizes.spaceBetweenSections),

              /// Calendar
              ZHomeCalendar(),
              SizedBox(height: ZSizes.spaceBetweenSections),
            ],
          ),
        ),
      ),
    );
  }
}
