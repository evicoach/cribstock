import 'package:cribstock/core/presentation/app_top_others_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/presentation/app_image.dart';
import '../../../../core/presentation/app_top_widget.dart';
import '../../../../core/presentation/app_widget.dart';
import '../../../../core/presentation/header_see_all.dart';
import '../../../../utility/app_assets.dart';
import '../../../../utility/app_colors.dart';
import '../../../../utility/ui_utils.dart';
import '../widgets/investment_item.dart';
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
                      "3 shares???\$170.90",
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
                      "2 shares ???\$170.90",
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
                      "5 shares???\$170.90",
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
                      "2 shares ???\$170.90",
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
                      "5 shares???\$170.90",
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
