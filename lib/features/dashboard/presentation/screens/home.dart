import 'package:cribstock/core/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/presentation/app_image.dart';
import '../../../../core/presentation/app_top_widget.dart';
import '../../../../utility/app_assets.dart';
import '../../../../utility/app_colors.dart';
import '../../../../utility/ui_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.primaryColor));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width,
          height: height * 0.5,
          decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        // Container(
        // padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
        Container(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
          child: Column(
            children: [
              AppTopWidget(
                firstIcon: AppImage(
                  path: AppAssets.sms,
                ),
                firstHandler: () {},
                secondIcon: AppImage(
                  path: AppAssets.notification,
                ),
                secondHandler: (){},
              ),
              const SizedBox(height: 22),
              Container(
                width: double.infinity,
                height: height * 0.45,
                padding: const EdgeInsets.only(
                    left: 10, top: 20, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withOpacity(0.3),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      offset: const Offset(
                        0.0,
                        0.0,
                      ),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Available balance",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "\$${numberFormatter("16485")}",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: scaledFontSize(30, context),
                          ),
                        ),
                        // const SizedBox(height: 20),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => AppWidget.showAppBottomSheet(
                              margin: EdgeInsets.zero,
                              backgroundColor: AppColors.transparent,
                              color: AppColors.white,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15)),
                              context: context,
                              children: []),
                          child: Row(
                            children: [
                              const Text("See more"),
                              const SizedBox(width: 5),
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      AppColors.primaryColor.withOpacity(0.2),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color:
                                      AppColors.primaryColor.withOpacity(0.4),
                                  size: 10,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: AppImage(
                            width: 50.0,
                            height: 50.0,
                            path: "https://picsum.photos/200/300",
                            isNetwork: true,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => AppWidget.showAppBottomSheet(
                              context: context, children: []),
                          child: Row(
                            children: [
                              const Text(
                                "US Dollar",
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
                              const SizedBox(width: 5),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: AppColors.primaryColor.withOpacity(0.4),
                                size: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 15),
              SizedBox(
                  height: 70,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (ctx, index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primaryColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.search,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const Text("Search")
                            ],
                          );
                        }

                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Center(
                                  child: AppImage(
                                    width: 40.0,
                                    height: 40.0,
                                    path: "https://picsum.photos/200/300",
                                    isNetwork: true,
                                  ),
                                ),
                              ),
                            ),
                            Text("Name")
                          ],
                        );
                      })),
              AccountActions(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(color: AppColors.grey),
                ),
                children: [
                  AccountAction(
                      title: "Add money",
                      // icon: AppImage(path: AppAssets.openAccount),
                      icon: Container(
                        width: 60,
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 8, right: 8),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.add,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      handler: () {}),
                  const Spacer(),
                  AccountAction(
                      title: "Send money",
                      icon: Container(
                        width: 60,
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 8, right: 8),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: AppColors.iconOrange.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.currency_exchange,
                          color: AppColors.iconOrange,
                        ),
                      ),
                      handler: () {}),
                  const Spacer(),
                  AccountAction(
                      title: "More",
                      icon: Container(
                        width: 60,
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 8, right: 8),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.grid_view_outlined,
                          color: AppColors.grey,
                        ),
                      ),
                      handler: () {}
                      // Navigator.of(context).pushNamed(DepositCheck.routeName),
                      ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: scaledFontSize(18, context)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => AppWidget.showAppBottomSheet(
                        context: context,
                        children: List.generate(
                            20,
                            (index) => TransactionItem(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                icon: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.tabOrange),
                                    child: const Icon(Icons.money)),
                                title: const Text(
                                  "Food",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                date: Text(
                                  "14 April, 2019",
                                  style: TextStyle(color: AppColors.grey),
                                ),
                                amount: Text(
                                  "\$${numberFormatter("450")}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                )))),
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          // fontWeight: FontWeight.w500,
                          fontSize: scaledFontSize(16, context)),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              // Transactions view
              Container(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(color: AppColors.grey),
                ),
                child: Column(
                  children: List.generate(
                      3,
                      (index) => TransactionItem(
                          margin: const EdgeInsets.only(top: 10, bottom: 20),
                          icon: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.tabOrange),
                              child: const Icon(Icons.money)),
                          title: const Text(
                            "Food",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          date: Text(
                            "14 April, 2019",
                            style: TextStyle(color: AppColors.grey),
                          ),
                          amount: Text(
                            "\$${numberFormatter("450")}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ))),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {
  final Widget icon;
  final Widget title;
  final Widget date;
  final Widget amount;
  final EdgeInsets margin;

  const TransactionItem({
    required this.amount,
    required this.date,
    required this.icon,
    required this.title,
    required this.margin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          icon,
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title,
              const SizedBox(height: 10),
              date,
            ],
          ),
          const Spacer(),
          amount
        ],
      ),
    );
  }
}

class AddExternalAccount extends StatelessWidget {
  const AddExternalAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        children: [
          AppImage(path: AppAssets.addCircle),
          const SizedBox(width: 10),
          Text(
            "Add External Bank Account",
            style: TextStyle(color: const Color(0xFF465468).withOpacity(0.8)),
          ),
          const Spacer(),
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

class AccountActions extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxDecoration? decoration;

  const AccountActions({
    required this.children,
    this.decoration,
    this.margin,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      padding: padding ?? const EdgeInsets.only(left: 10, right: 10),
      margin: margin,
      child: Row(
        children: children,
      ),
    );
  }
}

class AccountAction extends StatelessWidget {
  final String title;
  final Widget icon;
  final BoxDecoration? decoration;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final void Function()? handler;

  const AccountAction({
    required this.title,
    required this.icon,
    this.decoration,
    this.margin,
    this.padding,
    this.handler,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: decoration,
        child: Column(
          children: [
            icon,
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}

class BankingHeader extends StatelessWidget {
  final List<Widget> children;

  const BankingHeader({
    required this.children,
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        // height: height * 0.6,
        decoration: BoxDecoration(
            // border: Border.all(color: AppColors.greyLineColor),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            const SizedBox(
              child: YepHeader(),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: Column(
                children: children,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AccountTypeItem extends StatelessWidget {
  const AccountTypeItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        children: [
          Container(
              height: 41,
              width: 41,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.activeIconColor)),
          SizedBox(width: 7),
          Text(
            "Checking Account",
            style: TextStyle(color: Color(0xFF465468).withOpacity(0.8)),
          ),
          Spacer(),
          Text(
            "\$20,131.00",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF2A4368),
            ),
          ),
          SizedBox(width: 11),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 19,
            color: Color(0xFFC0C5C8),
          )
        ],
      ),
    );
  }
}

class YepHeader extends StatelessWidget {
  const YepHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 49,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              gradient: LinearGradient(
                colors: [Color(0xFF001129), Color(0xFF024DBD)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppImage(
                  height: 15.67,
                  width: 13.66,
                  path: AppAssets.yep,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "Yep! Accounts",
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: scaledFontSize(16, context)),
              )
            ],
          ),
        ),
        Positioned(
            right: -5, child: AppImage(path: AppAssets.headerBackground)),
      ],
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
//         GestureDetector(
//           onTap: () {},
//           // onTap: () => Navigator.of(context).pushNamed(ProfileScreen.routeName),
//           child: SizedBox(
//             width: 33,
//             height: 33,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: AppImage(
//                   path: "https://picsum.photos/200/300", isNetwork: true),
//             ),
//           ),
//         ),
//         const SizedBox(width: 10),
//         const Spacer(),
//         AppTopWidgetItem(
//             icon: AppImage(path: AppAssets.sms),
//             // title: "Inbox",
//             handler: () {
//               debugPrint("Inbox");
//             }),
//         const SizedBox(width: 15),
//         AppTopWidgetItem(
//             icon: AppImage(path: AppAssets.notification),
//             // title: "Updates",
//             handler: () {
//               debugPrint("Notifications");
//             }),
//       ],
//     );
//   }
// }

// class AppTopWidgetItem extends StatefulWidget {
//   final Widget icon;
//   final String? title;
//   final void Function()? handler;
//
//   AppTopWidgetItem({
//     required this.icon,
//     this.handler,
//     this.title,
//   });
//
//   @override
//   State<AppTopWidgetItem> createState() => _AppTopWidgetItemState();
// }

// class _AppTopWidgetItemState extends State<AppTopWidgetItem> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.handler,
//       child: Column(
//         children: [
//           widget.icon,
//           const SizedBox(height: 7),
//           if (widget.title != null)
//             Text(
//               widget.title!,
//               style: TextStyle(
//                   fontSize: scaledFontSize(8, context),
//                   fontWeight: FontWeight.w400),
//             )
//         ],
//       ),
//     );
//   }
// }
