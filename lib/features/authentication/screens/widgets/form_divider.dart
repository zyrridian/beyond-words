import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ZFormDivider extends StatelessWidget {
  const ZFormDivider({
    super.key,
    required this.dividerText
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? ZColors.darkGrey : ZColors.darkerGrey, thickness: 0.5, indent: 0, endIndent: 10)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? ZColors.darkGrey : ZColors.darkerGrey, thickness: 0.5, indent: 10, endIndent: 0))
      ],
    );
  }
}