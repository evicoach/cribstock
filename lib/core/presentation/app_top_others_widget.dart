import 'package:flutter/material.dart';

import 'app_image.dart';

class AppTopWidgetOthers extends StatefulWidget {
  final Widget? right;
  final Widget title;
  final EdgeInsets? padding;
  final Widget? leading;

  AppTopWidgetOthers({
    this.leading,
    this.right,
    required this.title,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  State<AppTopWidgetOthers> createState() => _AppTopWidgetOthersState();
}

class _AppTopWidgetOthersState extends State<AppTopWidgetOthers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.only(left: 16, right: 20),
      child: Row(
        children: [
          SizedBox(
            width: 33,
            height: 33,
            child: widget.leading ??
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GestureDetector(
                    onTap: () {
                      // if (ModalRoute.of(context)?.settings.name ==
                      //     ProfileScreen.routeName) return;
                      // Navigator.of(context).pushNamed(ProfileScreen.routeName);
                    },
                    child: AppImage(
                        path: "https://picsum.photos/200/300", isNetwork: true),
                  ),
                ),
          ),
          const Spacer(),
          Align(alignment: Alignment.center, child: widget.title),
          // Text(
          //   "Cards",
          //   style: TextStyle(
          //       fontSize: scaledFontSize(20, context),
          //       fontWeight: FontWeight.w700),
          // ),
          const Spacer(),
          if (widget.right != null) widget.right! else Container()
          // AppTopWidgetItem(
          //     icon: AppImage(path: AppAssets.notification),
          //     title: "Updates",
          //     handler: () {
          //       debugPrint("Notifications");
          //     }),
        ],
      ),
    );
  }
}

// class AppTopWidget extends StatelessWidget {
//   const AppTopWidget({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SizedBox(
//           width: 33,
//           height: 33,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: AppImage(
//                 path: "https://picsum.photos/200/300", isNetwork: true),
//           ),
//         ),
//         const SizedBox(width: 10),
//         Text(
//           "Hello, Evi",
//           style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: scaledFontSize(16, context)),
//         ),
//         const Spacer(),
//         AppTopWidgetItem(
//             icon: AppImage(path: AppAssets.notification),
//             title: "Updates",
//             handler: () {
//               debugPrint("Notifications");
//             }),
//         const SizedBox(width: 23),
//         AppTopWidgetItem(
//             icon: AppImage(path: AppAssets.sms),
//             title: "Inbox",
//             handler: () {
//               debugPrint("Inbox");
//             }),
//         const SizedBox(width: 23),
//         AppTopWidgetItem(
//           icon: AppImage(path: AppAssets.logout),
//           title: "Logout",
//           handler: () {
//             debugPrint("Logout");
//           },
//         )
//       ],
//     );
//   }
// }
