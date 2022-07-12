import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';

class AccountTypeItem extends StatelessWidget {
  const AccountTypeItem({Key? key, h}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        children: [
          // AppImage(path: ""),
          Container(
              height: 41,
              width: 41,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.activeIconColor)),
          const SizedBox(width: 7),
          Text(
            "Checking Account",
            style: TextStyle(color: const Color(0xFF465468).withOpacity(0.8)),
          ),
          const Spacer(),
          const Text(
            "\$20,131.00",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF2A4368),
            ),
          ),
          const SizedBox(width: 11),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 19,
            color: Color(0xFFC0C5C8),
          )
        ],
      ),
    );
  }
}