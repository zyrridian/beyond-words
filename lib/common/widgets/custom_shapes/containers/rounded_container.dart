import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class ZRoundedContainer extends StatelessWidget {
  const ZRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.radius = ZSizes.cardRadiusLg,
    this.showBorder = false,
    this.borderColor = ZColors.borderPrimary,
    this.backgroundColor = ZColors.white,
    this.padding,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}