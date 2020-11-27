import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:titan/domains/records_list/records_list.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Written Relics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Written Relics')),
        body: RecordsList(),
        floatingActionButton:
            SpeedDial(child: Icon(Icons.menu_open), children: [
          SpeedDialChild(
            child: Icon(Icons.add),
          ),
          SpeedDialChild(child: Icon(Icons.filter_alt)),
          SpeedDialChild(child: Icon(Icons.publish))
        ]),
      ),
    );
  }
}
