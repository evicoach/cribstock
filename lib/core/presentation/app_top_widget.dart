import 'package:flutter/material.dart';

import '../../features/dashboard/presentation/screens/home.dart';
import 'app_image.dart';
import 'app_top_widget_item.dart';

class AppTopWidget extends StatelessWidget {
  final Widget firstIcon;
  final Widget secondIcon;
  final void Function()? firstHandler;
  final void Function()? secondHandler;

  const AppTopWidget({
    this.firstHandler,
    required this.firstIcon,
    this.secondHandler,
    required this.secondIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          // onTap: () => Navigator.of(context).pushNamed(ProfileScreen.routeName),
          child: SizedBox(
            width: 33,
            height: 33,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AppImage(
                  path: "https://picsum.photos/200/300", isNetwork: true),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Spacer(),
        AppTopWidgetItem(
          // icon: AppImage(path: AppAssets.sms),
            icon: firstIcon,
            // title: "Inbox",
            handler: firstHandler),
        const SizedBox(width: 15),
        AppTopWidgetItem(
          // icon: AppImage(path: AppAssets.notification),
            icon: secondIcon,
            // title: "Updates",
            handler: secondHandler),
      ],
    );
  }
}