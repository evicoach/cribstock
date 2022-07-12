import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/presentation/app_image.dart';
import '../../../../utility/app_assets.dart';
import '../../../../utility/app_colors.dart';
import '../../../../utility/ui_utils.dart';

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
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        // Container(
        // padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
        Container(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
          child: Column(
            children: [
              const AppTopWidget(),
              const SizedBox(height: 22),
              BankingHeader(
                height: height,
                children: const [
                  AccountTypeItem(),
                  AccountTypeItem(),
                  AccountTypeItem(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const AccountActions(),
              const SizedBox(
                height: 15,
              ),
              // BankingHeader(
              //   height: height,
              //   children: const [
              //     AccountTypeItem(),
              //     AccountTypeItem(),
              //     AccountTypeItem(),
              //     AddExternalAccount()
              //   ],
              // ),
              const SizedBox(height: 10),
            ],
          ),
        )
      ],
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
  const AccountActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          AccountAction(
              title: "Open Account",
              icon: AppImage(path: AppAssets.openAccount),
              handler: () {}),
          const Spacer(),
          AccountAction(
              title: "Transfer | Send",
              icon: AppImage(path: AppAssets.transferSend),
              handler: () {}),
          const Spacer(),
          AccountAction(
              title: "Deposit Check",
              icon: AppImage(path: AppAssets.depositCheck),
              handler: (){}
            // Navigator.of(context).pushNamed(DepositCheck.routeName),
          ),
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
          // AppImage(path: ""),
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

class AppTopWidget extends StatelessWidget {
  const AppTopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){},
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
        // Text(
        //   "Hello, Evi",
        //   style: TextStyle(
        //       fontWeight: FontWeight.w500,
        //       fontSize: scaledFontSize(16, context)),
        // ),
        const Spacer(),

        AppTopWidgetItem(
            icon: AppImage(path: AppAssets.sms),
            // title: "Inbox",
            handler: () {
              debugPrint("Inbox");
            }),
        const SizedBox(width: 15),
        AppTopWidgetItem(
            icon: AppImage(path: AppAssets.notification),
            // title: "Updates",
            handler: () {
              debugPrint("Notifications");
            }),
        // const SizedBox(width: 23),
        // AppTopWidgetItem(
        //   icon: AppImage(path: AppAssets.logout),
        //   title: "Logout",
        //   handler: () {
        //     debugPrint("Logout");
        //   },
        // )
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

