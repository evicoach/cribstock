import 'package:cribstock/features/dashboard/presentation/screens/home.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/app_image.dart';
import '../../../../utility/app_assets.dart';
import '../../../../utility/app_colors.dart';
import '../../../../utility/ui_utils.dart';
import 'stock.dart';


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
  final List<Widget> _views = [
    const HomeScreen(),
    const StockScreen(),
    const StockScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppColors.white,
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
                label: "Home",
                icon: AppImage(path: AppAssets.cards),
                activeIcon: AppImage(
                    path: AppAssets.cards, color: AppColors.primaryColor)),
            BottomNavigationBarItem(
                label: "Report",
                icon: AppImage(path: AppAssets.cards),
                activeIcon: AppImage(
                    path: AppAssets.cards, color: AppColors.primaryColor)),
            BottomNavigationBarItem(
                label: "Stock",
                icon: AppImage(path: AppAssets.credit),
                activeIcon: AppImage(
                    path: AppAssets.credit, color: AppColors.primaryColor)),
            BottomNavigationBarItem(
                label: "Cards",
                icon: AppImage(
                  path: AppAssets.banking,
                ),
                activeIcon: AppImage(
                  path: AppAssets.banking,
                  color: AppColors.primaryColor,
                )),
          ],
        ),
    );
  }
}
