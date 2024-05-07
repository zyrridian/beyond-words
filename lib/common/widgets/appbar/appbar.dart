import 'package:beyond_words/utils/constants/colors.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:beyond_words/utils/device/device_utility.dart';
import 'package:beyond_words/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ZAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ZAppBar({
      super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingPressed
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingPressed;

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: ZSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Iconsax.arrow_left_2, color: dark ? ZColors.white : ZColors.dark))
              : leadingIcon != null
                  ? IconButton(
                      onPressed: leadingPressed, icon: Icon(leadingIcon))
                  : null,
          title: title,
          actions: actions,
        ));
  }

  @override
  // implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
