import 'package:flutter/material.dart';
import 'package:mxpert/src/features/statistics_screen/chart_screen/sales_data_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <SplineSeries<SalesDataModel, String>>[
          SplineSeries<SalesDataModel, String>(
              color: const Color.fromARGB(255, 47, 125, 121),
              width: 3,
              dataSource: <SalesDataModel>[
                SalesDataModel(100, "mon"),
                SalesDataModel(20, "Tue"),
                SalesDataModel(40, "wed"),
                SalesDataModel(35, "Thu"),
                SalesDataModel(20, "Fri"),
                SalesDataModel(15, "sat"),
                SalesDataModel(5, "sun"),
              ],
              xValueMapper: (SalesDataModel sales, _) => sales.year,
              yValueMapper: (SalesDataModel sales, _) => sales.sales)
        ],
      ),
    );
  }
}
