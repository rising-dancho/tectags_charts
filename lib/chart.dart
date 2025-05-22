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
    return Center(
      child: PieChart(
        PieChartData(
          sections: pieChartSection(),
          // sectionsSpace: 0,
          centerSpaceRadius: 50,
        ),
      ),
    );
  }

  List<PieChartSectionData> pieChartSection() {
    List<Color> sectionColors = [
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.green,
    ];

    return List.generate(4, (index) {
      final radius = 100.0;
      final fontSize = 18.0;

      double value = (index + 1) * 10;

      return PieChartSectionData(
        color: sectionColors[index],
        value: value,
        title: '$value%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFFF),
        ),
      );
    });
  }
}
