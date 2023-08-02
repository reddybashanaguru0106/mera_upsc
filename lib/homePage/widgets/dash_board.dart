// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

const Color darkBlue = Color(0xFF12202F);

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  Map<String, double> dataMap = {
    "No.Of Tests": 100.0,
    "Test Attempted": 45.0,
    "Un Attempted": 55.0,
    "Result": 60.0,
    "Other": 0.0,
  };

  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFa4A42),
    const Color(0xffFE9539),
  ];

  final gradientList = <List<Color>>[
    [
      const Color.fromRGBO(223, 250, 92, 1),
      const Color.fromRGBO(129, 253, 112, 1),
    ],
    [
      const Color.fromRGBO(129, 182, 205, 1),
      const Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      const Color.fromRGBO(175, 63, 62, 1.0),
      const Color.fromRGBO(254, 154, 92, 1),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          title: const Text(
            'Marks',
          ),
          backgroundColor: darkBlue,
        ),
        body: Scrollbar(
          thickness: 10,
          child: ListView(
            children: [
              SizedBox(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: PieChart(
                      dataMap: dataMap,
                      colorList: colorList,
                      chartRadius: MediaQuery.of(context).size.width / 3,
                      centerText: "Test Marks",
                      ringStrokeWidth: 16,
                      animationDuration: const Duration(seconds: 3),
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValues: true,
                        showChartValuesOutside: true,
                        showChartValuesInPercentage: false,
                        showChartValueBackground: false,
                      ),
                      legendOptions: const LegendOptions(
                        showLegends: true,
                        legendTextStyle: TextStyle(fontSize: 15),
                        legendPosition: LegendPosition.bottom,
                        showLegendsInRow: true,
                      ),
                      gradientList: gradientList,
                    ),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(15),
                  child: Table(
                    border: TableBorder.all(
                        width: 1, color: Colors.black45), //table border
                    children: const [
                      TableRow(children: [
                        TableCell(child: Text("S/N")),
                        TableCell(child: Text("Name")),
                        TableCell(child: Text("Address")),
                        TableCell(child: Text("Nation"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("1.")),
                        TableCell(child: Text("Krishna Karki")),
                        TableCell(child: Text("Nepal, Kathmandu")),
                        TableCell(child: Text("Nepal"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("2.")),
                        TableCell(child: Text("John Wick")),
                        TableCell(child: Text("New York, USA")),
                        TableCell(child: Text("USA"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("3.")),
                        TableCell(child: Text("Fedrick May")),
                        TableCell(child: Text("Berlin, Germany")),
                        TableCell(child: Text("Germany"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("4.")),
                        TableCell(child: Text("Budda")),
                        TableCell(
                            child: Text(
                                "Gnp, jammalamadugu,gangulanarayanapalli")),
                        TableCell(child: Text("PDTR"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("5.")),
                        TableCell(child: Text("HARI")),
                        TableCell(child: Text("AKEPADU, RAJAMPET")),
                        TableCell(child: Text("AKKA"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("6.")),
                        TableCell(child: Text("chinna")),
                        TableCell(child: Text("PAALI, KADAPA")),
                        TableCell(child: Text("THONDA"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("7.")),
                        TableCell(child: Text("GANU")),
                        TableCell(child: Text("ANU, BADVEL")),
                        TableCell(child: Text("LOVE"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("8.")),
                        TableCell(child: Text("RASOOL")),
                        TableCell(child: Text("TNSF, RAJAMPET")),
                        TableCell(child: Text("TDP"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("9.")),
                        TableCell(child: Text("BABA")),
                        TableCell(child: Text("KRISHNA, MENTAL")),
                        TableCell(child: Text("GOD"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("10.")),
                        TableCell(child: Text("Fedrick May")),
                        TableCell(child: Text("Berlin, Germany")),
                        TableCell(child: Text("Germany"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("7.")),
                        TableCell(child: Text("GANU")),
                        TableCell(child: Text("ANU, BADVEL")),
                        TableCell(child: Text("LOVE"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("8.")),
                        TableCell(child: Text("RASOOL")),
                        TableCell(child: Text("TNSF, RAJAMPET")),
                        TableCell(child: Text("TDP"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("9.")),
                        TableCell(child: Text("BABA")),
                        TableCell(child: Text("KRISHNA, MENTAL")),
                        TableCell(child: Text("GOD"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("10.")),
                        TableCell(child: Text("Fedrick May")),
                        TableCell(child: Text("Berlin, Germany")),
                        TableCell(child: Text("Germany"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("7.")),
                        TableCell(child: Text("GANU")),
                        TableCell(child: Text("ANU, BADVEL")),
                        TableCell(child: Text("LOVE"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("8.")),
                        TableCell(child: Text("RASOOL")),
                        TableCell(child: Text("TNSF, RAJAMPET")),
                        TableCell(child: Text("TDP"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("9.")),
                        TableCell(child: Text("BABA")),
                        TableCell(child: Text("KRISHNA, MENTAL")),
                        TableCell(child: Text("GOD"))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("10.")),
                        TableCell(child: Text("Fedrick May")),
                        TableCell(child: Text("Berlin, Germany")),
                        TableCell(child: Text("Germany"))
                      ]),
                    ],
                  )
                  //
                  ),
            ],
          ),
        ));
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Marks',
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: const MyDashboard(),
  ));
}
