import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SyncFusionCrosshairChart extends StatefulWidget {
  const SyncFusionCrosshairChart({super.key});

  // @override
  // State<SyncFusionCrosshairChart> createState() =>
  //     _SyncFusionCrosshairChartState();

  @override
  State<SyncFusionCrosshairChart> createState() =>
      _SyncFusionCrosshairChartState();
}

class _SyncFusionCrosshairChartState extends State<SyncFusionCrosshairChart> {
  late CrosshairBehavior _crosshairBehavior;

  @override
  void initState() {
    _crosshairBehavior = CrosshairBehavior(
        enable: true,
        lineColor: Colors.red,
        lineDashArray: <double>[5, 5],
        lineWidth: 2,
        lineType: CrosshairLineType.vertical);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<ChartData> liste = List<ChartData>.generate(15, (x) {
      //grafik çizdirmek için random işlemler
      double y = 200;
      if (x % 2 == 0) {
        y = x * 150 * (333);
      } else {
        y = x - 150 + 1200 * -10;
      }

      return ChartData(2020 + x, y - 1000);
    });

    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Container(
                    child: SfCartesianChart(
                        series: <LineSeries<ChartData, int>>[
          LineSeries<ChartData, int>(
              dataSource: liste,
              xValueMapper: (ChartData data, _) => data.year,
              yValueMapper: (ChartData data, _) => data.value),
        ],
                        primaryXAxis: NumericAxis(
                            interactiveTooltip: InteractiveTooltip(
                                // Enables the crosshair tooltip
                                enable: true)),
                        crosshairBehavior: _crosshairBehavior)))));
  }
}

class ChartData {
  final int year;
  final double value;

  const ChartData(this.year, this.value);
}
