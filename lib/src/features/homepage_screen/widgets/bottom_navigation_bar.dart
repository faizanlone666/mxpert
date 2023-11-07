import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/features/homepage_screen/controllers/home_screen_controller.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageController = Get.put(HomeScreenController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff368983),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Obx(()=> Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    homePageController.getPages(0);
                  },
                  child: const Icon(
                    Icons.home,
                    size: 30,
                    color: (homePageController.indexColor.value == 0) ? Color(0xff368983) : Colors.grey,
                  ),
                ),GestureDetector(
                  onTap: () {
                    homePageController.getPages(1);
                  },
                  child: const Icon(
                    Icons.bar_chart_outlined,
                    size: 30,
                    color: Color(0xff368983),
                  ),
                ),GestureDetector(
                  onTap: () {
                    homePageController.getPages(2);
                  },
                  child: const Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 30,
                    color: Color(0xff368983),
                  ),
                ),GestureDetector(
                  onTap: () {
                    homePageController.getPages(3);
                  },
                  child: const Icon(
                    Icons.person_outline,
                    size: 30,
                    color: Color(0xff368983),
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
