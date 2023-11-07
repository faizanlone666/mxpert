import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/constants/colors.dart';
import 'package:mxpert/src/constants/data.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/statistics_screen/chart_screen/chart_screen.dart';
import 'package:mxpert/src/features/statistics_screen/controller/statistics_controller.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List day = [fDay, fWeek, fMonth, fYear];
    int indexColor = 0;
    final statisticsController = Get.put(StatisticsController());
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    fStatisticsTitle,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                              4,
                              (index) => GestureDetector(
                                    onTap: () {
                                      statisticsController
                                          .getIndexController(index);
                                      // setState(() {
                                      //   indexColor == index;
                                      // });
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: statisticsController
                                                    .indexColor.value ==
                                                index
                                            ? const Color.fromARGB(
                                                255, 47, 125, 121)
                                            : Colors.grey,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        day[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ),
                                  ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                fExpenseButtonText,
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                              const Icon(
                                Icons.arrow_downward_sharp,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const ChartScreen(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          fTopSpending,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const Icon(
                          Icons.swap_vert,
                          size: 25,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList.builder(
              itemCount: listData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      listData[index].logo,
                      height: 40,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listData[index].itemName,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        listData[index].quantity,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        listData[index].date,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  trailing: Text(
                    "\$ ${listData[index].price}",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                );
              })
        ],
      )),
    );
  }
}
