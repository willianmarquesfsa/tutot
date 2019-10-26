import 'package:flutter/material.dart';
import 'package:tutor/scrolling_years_calendar.dart';
import 'package:tutor/scrolling_month_calendar.dart';
//import 'package:tutor/year_view.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Text("Ano")),
                Tab(icon: Text("Mês")),
                Tab(icon: Text("Dia")),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              //Icon(Icons.directions_car),
              ScrollingYearsCalendar(
                currentDateColor: Colors.blue[200],
                lastDate: DateTime.parse("2030-12-31 23:59:59"),
                initialDate: DateTime.parse("2015-01-01 00:00:00"),
                context: context,
                firstDate: DateTime.parse("2015-01-01 00:00:00"),
                ),

              ScrollingMonthCalendar(
                currentDateColor: Colors.blue[200],
                lastDate: DateTime.parse("2030-12-31 23:59:59"),
                initialDate: DateTime.parse("2015-01-01 00:00:00"),
                context: context,
                firstDate: DateTime.parse("2015-01-01 00:00:00"),
              ),

              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}