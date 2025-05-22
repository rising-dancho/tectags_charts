import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Center(child: PieChart(PieChartData(sections: pieChartSection())));
  }

  List<PieChartSectionData> pieChartSection() {
    return List.generate(4, (index) => PieChartSectionData());
  }
}
