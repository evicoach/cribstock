import 'package:cribstock/core/presentation/app_top_others_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/presentation/app_image.dart';
import '../../../../core/presentation/app_widget.dart';
import '../../../../utility/app_assets.dart';
import '../../../../utility/app_colors.dart';
import '../../../../utility/ui_utils.dart';
import 'home.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({Key? key}) : super(key: key);

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.transparent));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTopWidget(
            firstIcon: AppImage(
              path: AppAssets.smsBlack,
            ),
            firstHandler: () {},
            secondIcon: AppImage(
              path: AppAssets.notificationBlack,
            ),
            secondHandler: (){},
          ),
          const SizedBox(height: 20),
          Container(
            width: width,
            padding:
                const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
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
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$${numberFormatter("5240")}",
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: scaledFontSize(24, context)),
                    ),
                    Text(
                      ".50",
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: scaledFontSize(18, context)),
                    ),
                    const Icon(Icons.keyboard_arrow_down, size: 15),
                    const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: AppImage(
                        width: 50.0,
                        height: 50.0,
                        path: "https://picsum.photos/200/300",
                        isNetwork: true,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "+\$190.25",
                      style: TextStyle(color: AppColors.grey),
                    ),
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.arrow_drop_up,
                      color: AppColors.primaryColor,
                    ),
                    const Text(
                      "3.04%",
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                AccountActions(
                  // padding: const EdgeInsets.only(
                  //     top: 20, bottom: 20, left: 20, right: 20),
                  margin: EdgeInsets.zero,
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
                              top: 5, bottom: 5, left: 0, right: 0),
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
                        title: "Invest",
                        icon: Container(
                          width: 60,
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 0, right: 0),
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
                              top: 5, bottom: 5, left: 0, right: 0),
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
              ],
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Investments",
            style: TextStyle(
                fontSize: scaledFontSize(20, context),
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 15),
          Container(
            width: width,
            padding:
                const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
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
            child: Column(
              children: [
                InvestmentItem(
                    iconRadius: BorderRadius.circular(25),
                    icon: AppImage(
                      path: "https://picsum.photos/200/300",
                      width: 50.0,
                      height: 50.0,
                      isNetwork: true,
                    ),
                    name: const Text(
                      "Apple",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    shares: Text(
                      "3 shares•\$170.90",
                      style: TextStyle(color: AppColors.grey),
                    ),
                    shareAmount: const Text(""),
                    shareChange: const [
                      Icon(
                        Icons.arrow_drop_up,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        "3.04%",
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ]),
                InvestmentItem(
                    iconRadius: BorderRadius.circular(25),
                    icon: AppImage(
                      path: "https://picsum.photos/200/300",
                      width: 50.0,
                      height: 50.0,
                      isNetwork: true,
                    ),
                    name: const Text(
                      "Google",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    shares: Text(
                      "2 shares •\$170.90",
                      style: TextStyle(color: AppColors.grey),
                    ),
                    shareAmount: Text(
                      "\$${numberFormatter("3895.35")}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    shareChange: [
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.appRed,
                      ),
                      Text(
                        "3.04%",
                        style: TextStyle(color: AppColors.appRed),
                      ),
                    ]),
                InvestmentItem(
                    iconRadius: BorderRadius.circular(25),
                    icon: AppImage(
                      path: "https://picsum.photos/200/300",
                      width: 50.0,
                      height: 50.0,
                      isNetwork: true,
                    ),
                    name: const Text(
                      "Tesla",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    shares: Text(
                      "5 shares•\$170.90",
                      style: TextStyle(color: AppColors.grey),
                    ),
                    shareAmount: Text(
                      "\$${numberFormatter("3895.35")}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    shareChange: const [
                      Icon(
                        Icons.arrow_drop_up,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        "3.04%",
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ]),
              ],
            ),
          ),
          const SizedBox(height: 15),
          HeaderSeeAll(
            subHeading: "Available to invest",
            actionText: "See all",
            handler: () {
              AppWidget.showAppBottomSheet(
                  context: context,
                  children: List.generate(
                      20,
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
                          ))));
            },
          ),
          const SizedBox(height: 15),
          Container(
            width: width,
            padding:
                const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
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
            child: Column(
              children: [
                InvestmentItem(
                    iconRadius: BorderRadius.circular(25),
                    icon: AppImage(
                      path: "https://picsum.photos/200/300",
                      width: 50.0,
                      height: 50.0,
                      isNetwork: true,
                    ),
                    name: const Text(
                      "Apple",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    shares: Text(
                      "2 shares •\$170.90",
                      style: TextStyle(color: AppColors.grey),
                    ),
                    shareAmount: Text(
                      "\$${numberFormatter("3895.35")}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    shareChange: [
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.appRed,
                      ),
                      Text(
                        "3.04%",
                        style: TextStyle(color: AppColors.appRed),
                      ),
                    ]),
                InvestmentItem(
                    iconRadius: BorderRadius.circular(25),
                    icon: AppImage(
                      path: "https://picsum.photos/200/300",
                      width: 50.0,
                      height: 50.0,
                      isNetwork: true,
                    ),
                    name: const Text(
                      "Tesla",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    shares: Text(
                      "5 shares•\$170.90",
                      style: TextStyle(color: AppColors.grey),
                    ),
                    shareAmount: Text(
                      "\$${numberFormatter("3895.35")}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    shareChange: const [
                      Icon(
                        Icons.arrow_drop_up,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        "3.04%",
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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

class InvestmentItem extends StatelessWidget {
  final Widget icon;
  final Text name;
  final Text shares;
  final Text shareAmount;
  final List<Widget> shareChange;
  final BorderRadius? iconRadius;

  const InvestmentItem({
    required this.icon,
    required this.name,
    required this.shareAmount,
    required this.shareChange,
    required this.shares,
    this.iconRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: iconRadius,
            child: icon,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [name, const SizedBox(height: 10), shares],
          ),
          const Spacer(),
          Column(
            children: [
              shareAmount,
              Row(
                children: shareChange,
              )
            ],
          )
        ],
      ),
    );
  }
}

class AccountAction extends StatelessWidget {
  final String title;
  final Widget icon;
  final void Function()? handler;

  const AccountAction({
    required this.title,
    required this.icon,
    this.handler,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Column(
        children: [icon, Text(title)],
      ),
    );
  }
}

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

class AppTopWidgetItem extends StatefulWidget {
  final Widget icon;
  final String? title;
  final void Function()? handler;

  AppTopWidgetItem({
    required this.icon,
    this.handler,
    this.title,
  });

  @override
  State<AppTopWidgetItem> createState() => _AppTopWidgetItemState();
}

class _AppTopWidgetItemState extends State<AppTopWidgetItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.handler,
      child: Column(
        children: [
          widget.icon,
          const SizedBox(height: 7),
          if (widget.title != null)
            Text(
              widget.title!,
              style: TextStyle(
                  fontSize: scaledFontSize(8, context),
                  fontWeight: FontWeight.w400),
            )
        ],
      ),
    );
  }
}
