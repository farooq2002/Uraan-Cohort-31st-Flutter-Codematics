import 'package:covid_tracker_flutter/Models/world_state_model.dart';
import 'package:covid_tracker_flutter/View/coutries_list.dart';
import 'package:covid_tracker_flutter/services/world_state_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStats extends StatefulWidget {
  const WorldStats({super.key});

  @override
  State<WorldStats> createState() => _WorldStatsState();
}

class _WorldStatsState extends State<WorldStats> with TickerProviderStateMixin {
  late AnimationController _controller; // Declare AnimationController

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  final colorList = [
    const Color(0xff1aa260),
    const Color(0xff4285F4),
    const Color(0xffde5446),
  ];
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    WorldStateServices services = WorldStateServices();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              FutureBuilder(
                  future: services.fetchData(),
                  builder: (context, AsyncSnapshot<WorldStatesModel> snapshot) {
                    var snap = snapshot.data;

                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          PieChart(
                            dataMap: {
                              "Total": double.parse(snap!.cases.toString()),
                              "Recoverd":
                                  double.parse(snap.recovered.toString()),
                              "Deaths": double.parse(snap.deaths.toString())
                            },
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            colorList: colorList,
                            legendOptions: const LegendOptions(
                                legendPosition: LegendPosition.left),
                            chartRadius: width / 2.8,
                            chartType: ChartType.ring,
                            chartValuesOptions: const ChartValuesOptions(
                                showChartValuesInPercentage: true),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18.0),
                            child: Card(
                              child: Column(children: [
                                MyRowWidget(
                                    title: "Total",
                                    value: snap.cases.toString()),
                                MyRowWidget(
                                    title: "Deaths",
                                    value: snap.deaths.toString()),
                                MyRowWidget(
                                    title: "Reovered",
                                    value: snap.active.toString()),
                                MyRowWidget(
                                    title: "Critical",
                                    value: snap.active.toString()),
                                MyRowWidget(
                                    title: "Today Deaths",
                                    value: snap.active.toString()),
                                MyRowWidget(
                                    title: "Today Recovered",
                                    value: snap.active.toString()),
                              ]),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CountriesList()));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: colorList.first,
                                  borderRadius: BorderRadius.circular(10)),
                              child:
                                  const Center(child: Text("Track Counties")),
                            ),
                          )
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return Text("Erorr :  ${snapshot.error}");
                    } else {
                      return Center(
                        child: SpinKitFadingCircle(
                            duration: const Duration(seconds: 3),
                            color: Colors.white,
                            controller: _controller),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class MyRowWidget extends StatelessWidget {
  final String title, value;
  const MyRowWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(title), Text(value)],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider()
        ],
      ),
    );
  }
}
