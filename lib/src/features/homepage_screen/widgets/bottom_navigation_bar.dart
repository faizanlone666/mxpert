import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/features/homepage_screen/controllers/home_screen_controller.dart';
import 'package:mxpert/src/features/homepage_screen/homepage_screen.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/add_screen.dart';
import 'package:mxpert/src/features/statistics_screen/chart_screen/chart_screen.dart';
import 'package:mxpert/src/features/statistics_screen/statistics_screen.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageController = Get.put(HomeScreenController());
    List screens = [const HomePageScreen(), const StatisticsScreen(),const HomePageScreen(), const StatisticsScreen()];
    return Obx(()=> Scaffold(
      body: screens[homePageController.indexColor.value],
      floatingActionButton: FloatingActionButton(
        onPressed: (()=> Get.to(()=> const AddScreen())),
        backgroundColor: const Color(0xff368983),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    homePageController.getPages(0);
                  },
                  child: Icon(
                    Icons.home,
                    size: 30,
                    color: homePageController.indexColor.value == 0 ? const Color(0xff368983) : Colors.grey,
                  ),
                ),GestureDetector(
                  onTap: () {
                    homePageController.getPages(1);
                  },
                  child: Icon(
                    Icons.bar_chart_outlined,
                    size: 30,
                    color: homePageController.indexColor.value == 1 ? const Color(0xff368983) : Colors.grey,
                  ),
                ),GestureDetector(
                  onTap: () {
                    homePageController.getPages(2);
                  },
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 30,
                    color: homePageController.indexColor.value == 2 ? const Color(0xff368983) : Colors.grey,
                  ),
                ),GestureDetector(
                  onTap: () {
                    homePageController.getPages(3);
                  },
                  child: Icon(
                    Icons.person_outline,
                    size: 30,
                    color: homePageController.indexColor.value == 3 ? const Color(0xff368983) : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
