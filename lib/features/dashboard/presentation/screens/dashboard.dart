import 'package:flutter/material.dart';


import '../../../core/presentation/app_image.dart';
import '../../banking/presentation/bloc/banking_bloc.dart';
import '../../transfer/presentation/bloc/transfer_bloc.dart';

class Dashboard extends StatefulWidget {
  static const routeName = "dash-board";
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  void _selectTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  int currentIndex = 0;
  final List<Widget> _views = const [
    Banking(),
    CardsScreen(),
    TransferPay(),
    CreditScreen(),
    RewardsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _views[currentIndex],
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(fontSize: scaledFontSize(12, context)),
          unselectedLabelStyle:
          TextStyle(fontSize: scaledFontSize(12, context)),
          currentIndex: currentIndex,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: _selectTab,
          items: [
            BottomNavigationBarItem(
                label: "Banking",
                icon: AppImage(
                  path: AppAssets.banking,
                ),
                activeIcon: AppImage(
                  path: AppAssets.banking,
                  color: AppColors.primaryColor,
                )),
            BottomNavigationBarItem(
                label: "Cards",
                icon: AppImage(path: AppAssets.cards),
                activeIcon: AppImage(
                    path: AppAssets.cards, color: AppColors.primaryColor)),
            BottomNavigationBarItem(
                label: "Transfer | Pay",
                icon: AppImage(path: AppAssets.cards),
                activeIcon: AppImage(
                    path: AppAssets.cards, color: AppColors.primaryColor)),
            BottomNavigationBarItem(
                label: "Credit",
                icon: AppImage(path: AppAssets.credit),
                activeIcon: AppImage(
                    path: AppAssets.credit, color: AppColors.primaryColor)),
            BottomNavigationBarItem(
                label: "Rewards",
                icon: AppImage(path: AppAssets.rewards),
                activeIcon: AppImage(
                    path: AppAssets.rewards, color: AppColors.primaryColor)),
          ],
        ),
    );
  }
}
