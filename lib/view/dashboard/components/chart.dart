import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          PieChart(PieChartData(
              startDegreeOffset: 250,
              centerSpaceRadius: 70,
              sectionsSpace: 0,
              sections: pieChartSectionData)),
          const SizedBox(height: kPadding * 2),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '29.1',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w500, height: .7),
              ),
              const Text('of 128GB')
            ],
          ))
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionData = [
  PieChartSectionData(
      color: Colors.red, radius: 15, value: 15, showTitle: false),
  PieChartSectionData(
      color: Colors.blue, radius: 25, value: 35, showTitle: false),
  PieChartSectionData(
      color: primaryColor.withOpacity(.075),
      radius: 15,
      value: 25,
      showTitle: false),
  PieChartSectionData(
      color: Colors.green, radius: 16, value: 10, showTitle: false),
  PieChartSectionData(
      color: Colors.yellow, radius: 13, value: 15, showTitle: false),
];
