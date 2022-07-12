import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';
import '../../utility/ui_utils.dart';

class HeaderSeeAll extends StatelessWidget {
  final String subHeading;
  final String actionText;
  final void Function()? handler;

  const HeaderSeeAll({
    required this.subHeading,
    required this.actionText,
    this.handler,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          subHeading,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: scaledFontSize(16, context)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: handler,
          child: Text(
            actionText,
            style: TextStyle(
                color: AppColors.primaryColor,
                // fontWeight: FontWeight.w500,
                fontSize: scaledFontSize(16, context)),
          ),
        )
      ],
    );
  }
}