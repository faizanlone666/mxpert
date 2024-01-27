import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/constants/dataFile.dart';
import 'package:mxpert/src/features/statistics_screen/chart_screen/sales_data_model.dart';
import 'package:mxpert/src/features/statistics_screen/controller/statistics_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key,required this.staticController});
  final StatisticsController staticController;
  @override
  Widget build(BuildContext context) {
    Widget getsfCartesianChart(){
      Widget widget =  const Text("data not found");
      switch(staticController.indexColor.value){
        case 0:
          widget =  SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: <SplineSeries<SalesDataModel, String>>[
              SplineSeries<SalesDataModel, String>(
                  color: const Color.fromARGB(255, 47, 125, 121),
                  width: 3,
                  dataSource: <SalesDataModel>[
                    SalesDataModel(getDataForWeeks()["Mon"], "1"),
                    SalesDataModel(getDataForWeeks()["Tue"], "2"),
                    SalesDataModel(getDataForWeeks()["Wed"], "3"),
                    SalesDataModel(getDataForWeeks()["Thu"], "4"),
                    SalesDataModel(getDataForWeeks()["Fri"], "5"),
                    SalesDataModel(getDataForWeeks()["Sat"], "6"),
                    SalesDataModel(getDataForWeeks()["Sun"], "7"),
                    SalesDataModel(getDataForWeeks()["Mon"], "8"),
                    SalesDataModel(getDataForWeeks()["Tue"], "9"),
                    SalesDataModel(getDataForWeeks()["Wed"], "10"),
                    SalesDataModel(getDataForWeeks()["Thu"], "11"),
                    SalesDataModel(getDataForWeeks()["Fri"], "12"),
                  ],
                  xValueMapper: (SalesDataModel sales, _) => sales.year,
                  yValueMapper: (SalesDataModel sales, _) => sales.sales)
            ],
          );
          break;
        case 1:
          widget =  SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      series: <SplineSeries<SalesDataModel, String>>[
      SplineSeries<SalesDataModel, String>(
      color: const Color.fromARGB(255, 47, 125, 121),
      width: 3,
      dataSource: <SalesDataModel>[
      SalesDataModel(getDataForWeeks()["Mon"], "Mon"),
      SalesDataModel(getDataForWeeks()["Tue"], "Tue"),
      SalesDataModel(getDataForWeeks()["Wed"], "Wed"),
      SalesDataModel(getDataForWeeks()["Thu"], "Thu"),
      SalesDataModel(getDataForWeeks()["Fri"], "Fri"),
      SalesDataModel(getDataForWeeks()["Sat"], "Sat"),
      SalesDataModel(getDataForWeeks()["Sun"], "Sun"),
      ],
      xValueMapper: (SalesDataModel sales, _) => sales.year,
      yValueMapper: (SalesDataModel sales, _) => sales.sales)
      ],
      );
          break;
        case 2:
          widget =  SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: <SplineSeries<SalesDataModel, String>>[
              SplineSeries<SalesDataModel, String>(
                  color: const Color.fromARGB(255, 47, 125, 121),
                  width: 3,
                  dataSource: <SalesDataModel>[
                    SalesDataModel(getDataForWeeks()["Mon"], "Jan"),
                    SalesDataModel(getDataForWeeks()["Tue"], "Feb"),
                    SalesDataModel(getDataForWeeks()["Wed"], "Mar"),
                    SalesDataModel(getDataForWeeks()["Thu"], "Apr"),
                    SalesDataModel(getDataForWeeks()["Fri"], "May"),
                    SalesDataModel(getDataForWeeks()["Sat"], "Jun"),
                    SalesDataModel(getDataForWeeks()["Sun"], "Jul"),
                    SalesDataModel(getDataForWeeks()["Mon"], "Aug"),
                    SalesDataModel(getDataForWeeks()["Tue"], "Sep"),
                    SalesDataModel(getDataForWeeks()["Wed"], "Oct"),
                    SalesDataModel(getDataForWeeks()["Thu"], "Nov"),
                    SalesDataModel(getDataForWeeks()["Fri"], "Dec"),
                  ],
                  xValueMapper: (SalesDataModel sales, _) => sales.year,
                  yValueMapper: (SalesDataModel sales, _) => sales.sales)
            ],
          );
          break;
        case 3:
          widget =  SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: <SplineSeries<SalesDataModel, String>>[
              SplineSeries<SalesDataModel, String>(
                  color: const Color.fromARGB(255, 47, 125, 121),
                  width: 3,
                  dataSource: <SalesDataModel>[
                    SalesDataModel(getDataForWeeks()["Mon"], "2020"),
                    SalesDataModel(getDataForWeeks()["Tue"], "2021"),
                    SalesDataModel(getDataForWeeks()["Wed"], "2022"),
                    SalesDataModel(getDataForWeeks()["Thu"], "2023"),
                    SalesDataModel(getDataForWeeks()["Fri"], "2024")
                  ],
                  xValueMapper: (SalesDataModel sales, _) => sales.year,
                  yValueMapper: (SalesDataModel sales, _) => sales.sales)
            ],
          );
          break;
      }
      return widget;
    }
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Obx(
        ()=> getsfCartesianChart()
      ),
    );
  }
}
