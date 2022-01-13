import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Card';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
// ignore: must_be_immutable
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  List<_SalesData> data = [
    _SalesData('1000 POS BRAC', 15900000),
    _SalesData('POS AMC 3rd Qtr 2021 BRAC', 2600000),
    _SalesData('POS AMC 4th Qtr 2021 BRAC', 2600000),
    _SalesData('Call center License offer BRAC', 9885000),
    _SalesData('NAC/NCC DBBL', 5800000),
    _SalesData('POS AMC 3rd Qtr 2021 DBBL', 2000000),
    _SalesData('POS AMC 4th Qtr 2021 DBBL', 2250000),
    _SalesData('Battery & charger offer DBBL', 1900000),
    _SalesData('Bangla QR UCBL', 920000),
    _SalesData('ATM (V)', 590000),
    _SalesData('NON Payment POS DARAZ', 7900000),
  ];
  final List<ChartData> chartData = [
    ChartData('David', 25, Colors.grey),
    ChartData('Steve', 38, Colors.blueAccent),
    ChartData('Jack', 34, Colors.redAccent),
    ChartData('Others', 52, Colors.greenAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 310.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OverviewCard(
                title: 'Empolyee Presence',
                children: [
                  SizedBox(
                    height: 265.0,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 50.0,
                      ),
                      child: SfCircularChart(
                        series: <CircularSeries>[
                          // Render pie chart
                          PieSeries<ChartData, String>(
                            dataSource: chartData,
                            pointColorMapper: (ChartData data, _) => data.color,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            // explode: true,
                            // // All the segments will be exploded
                            // explodeAll: true,
                            dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                              // labelIntersectAction: LabelIntersectAction.hide,
                              labelPosition: ChartDataLabelPosition.inside,
                              // color: Colors.white,
                              textStyle: TextStyle(color: Colors.white),
                              // connectorLineSettings: ConnectorLineSettings(
                              //     type: ConnectorType.curve),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              OverviewCard(
                title: 'YEARLY CONVEYANCE',
                children: [],
              ),
              OverviewCard(
                title: 'SALES FORECAST',
                children: [
                  Container(
                    color: Colors.white,
                    height: 250.0,
                    width: 280.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      //Initialize the spark charts widget
                      child: SfSparkBarChart.custom(
                        axisCrossesAt: 10,
                        xValueMapper: (int index) => data[index].xval,
                        yValueMapper: (int index) => data[index].yval,
                        dataCount: 10,
                        labelDisplayMode: SparkChartLabelDisplayMode.all,
                        labelStyle: const TextStyle(fontSize: 8),
                        trackball: const SparkChartTrackball(
                            borderWidth: 0,
                            borderColor: Colors.black45,
                            activationMode: SparkChartActivationMode.doubleTap),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 310.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OverviewCard(
                title: 'EMERGENCY',
                children: const [
                  SizedBox(height: 20.0),
                  Text(
                    'DMP Emergency: 999, 2222',
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'DMP Control Room: 9661700',
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Free Service Emergency: 199',
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Free Service HQ: 9555555, 9556666',
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'RAB-1: 8963419, 8963420, 8962221',
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Gulshan Thana: 9880234, 9895826',
                  ),
                ],
              ),
              OverviewCard(
                title: 'LINKS',
                children: [
                  const SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sales Forecast | Sales Activity',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Relationship Database',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Meeting Minutes',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Data Library | File Record Info',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'POS Repair Info | IIG Customers',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Surveillance Monitoring',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Confirmation Assessment (Supervisor)',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'HR Policies & Docs',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Downloads',
                    ),
                  ),
                ],
              ),
              OverviewCard(
                title: 'STATISTICS',
                children: const [
                  SizedBox(height: 20.0),
                  Text(
                    'Registered Employee in ADN EMS: 62',
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Avg. Job Exp. in ADN: ',
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Avg. Age of ADN: ',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OverviewCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  OverviewCard({Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              ListView(shrinkWrap: true, children: children),
            ],
          ),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.xval, this.yval);

  final String xval;
  final double yval;
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
