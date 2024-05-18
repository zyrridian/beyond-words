import 'package:beyond_words/features/learning/screens/learning/learning.dart';
import 'package:beyond_words/features/personalization/screens/profile/profile.dart';
import 'package:beyond_words/features/translator/screens/translator.dart';
import 'package:beyond_words/utils/constants/colors.dart';
import 'package:beyond_words/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/learning/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = ZHelperFunctions.isDarkMode(context);
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ClipOval(
        child: FloatingActionButton(
          onPressed: () => Get.to(() => const TranslatorScreen()),
          backgroundColor: ZColors.blue,
          foregroundColor: Colors.white,
          elevation: 0,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
            child: const Icon(Icons.hearing),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark ? ZColors.black : Colors.white,
          indicatorColor: dark ? ZColors.white.withOpacity(0.1) : ZColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.teacher), label: 'Learning'),
            NavigationDestination(icon: Icon(Iconsax.bookmark), label: 'Bookmark'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const LearningScreen(),
    Container(),
    const ProfileScreen(),
  ];
}

/// IF YOU WANT TO USE BOTTOM APP BAR:

// import 'package:beyond_words/features/learning/screens/learning/learning.dart';
// import 'package:beyond_words/features/personalization/screens/profile/profile.dart';
// import 'package:beyond_words/features/translator/screens/translator.dart';
// import 'package:beyond_words/utils/constants/colors.dart';
// import 'package:beyond_words/utils/helpers/helper_functions.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
//
// import 'features/learning/screens/home/home.dart';
//
// class NavigationMenu extends StatelessWidget {
//   const NavigationMenu({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavigationController());
//     final dark = ZHelperFunctions.isDarkMode(context);
//
//     return Scaffold(
//       extendBody: true,
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: ClipOval(
//         child: FloatingActionButton(
//           onPressed: () => Get.to(() => const TranslatorScreen()),
//           backgroundColor: ZColors.blue,
//           foregroundColor: Colors.white,
//           elevation: 0,
//           child: Transform(
//             alignment: Alignment.center,
//             transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
//             child: const Icon(Icons.hearing),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         color: dark ? ZColors.black : Colors.white,
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 6.0,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             IconButton(
//               icon: const Icon(Iconsax.home),
//               onPressed: () => controller.selectedIndex.value = 0,
//             ),
//             IconButton(
//               icon: const Icon(Iconsax.teacher),
//               onPressed: () => controller.selectedIndex.value = 1,
//             ),
//             const SizedBox(width: 48), // Add space in the middle
//             IconButton(
//               icon: const Icon(Iconsax.bookmark),
//               onPressed: () => controller.selectedIndex.value = 2,
//             ),
//             IconButton(
//               icon: const Icon(Iconsax.user),
//               onPressed: () => controller.selectedIndex.value = 3,
//             ),
//           ],
//         ),
//       ),
//       body: Obx(() => controller.screens[controller.selectedIndex.value]),
//     );
//   }
// }
//
// class NavigationController extends GetxController {
//   final Rx<int> selectedIndex = 0.obs;
//   final screens = [
//     const HomeScreen(),
//     const LearningScreen(),
//     Container(),
//     const ProfileScreen(),
//   ];
// }
