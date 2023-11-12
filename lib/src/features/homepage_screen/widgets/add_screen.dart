import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/constants/colors.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/homepage_screen/controllers/home_screen_controller.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/add_screen_header_widget.dart';


class AddScreen extends StatelessWidget {
  const AddScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final homePageController = Get.put(HomeScreenController());
    final size = MediaQuery.of(context).size;
    var brightness = Theme.of(context).brightness;
    bool isDark = brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AddScreenWidget(size: size),
            Positioned(
              top: size.height * 0.12,
              child: SingleChildScrollView(
                child: Container(
                  height: size.height * 0.75,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: isDark ? Colors.grey.shade800 : Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Form(
                      key: homePageController.formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            controller: homePageController.itemName,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.add_circle_outline),
                              hintText: "Item name",
                              labelText: "Item name",
                            ),
                          ),
                          const SizedBox(
                            height: fDefaultSize,
                          ),
                          TextFormField(
                            controller: homePageController.itemPrice,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.attach_money_outlined),
                                hintText: "Item price",
                                labelText: "Item price"),
                          ),
                          const SizedBox(
                            height: fDefaultSize,
                          ),
                          TextFormField(
                            controller: homePageController.itemQuantity,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                suffixIcon: Icon(
                                    Icons.production_quantity_limits_outlined),
                                hintText: "Item Quantity",
                                labelText: "Item Quantity"),
                          ),
                          const SizedBox(
                            height: fDefaultSize,
                          ),
                          Obx(
                            () => GestureDetector(
                              onTap: () async {
                                DateTime? newDate = await showDatePicker(
                                    context: context,
                                    initialDate: homePageController.date.value,
                                    firstDate: DateTime(2015),
                                    lastDate: DateTime(50000));
                                if (newDate == null) return;
                                homePageController.getDate(newDate);
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 10.0),
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 1, color: Colors.grey)),
                                child: Text(
                                  "Date : ${homePageController.date.value.year} / ${homePageController.date.value.month} / ${homePageController.date.value.day}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: fDefaultSize + 20.0,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                homePageController.saveData(
                                    homePageController.itemName,
                                    homePageController.itemQuantity,
                                    homePageController.itemPrice,
                                    homePageController.date.string);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: fPrimaryColor,
                                  side: const BorderSide(color: fPrimaryColor)),
                              child: Text(fAddScreenButtonText.toUpperCase()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
