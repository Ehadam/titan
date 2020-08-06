import 'package:flutter/material.dart';
import 'package:titan/domains/records_list/record.dart';
import 'package:titan/domains/records_list/record_list_item.dart';
import 'package:titan/domains/records_list/actions.dart';

class RecordsList extends StatefulWidget {
  @override
  _RecordsListState createState() => _RecordsListState();
}

class _RecordsListState extends State<RecordsList> {
  final List<Record> records = fetchRecords();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 3),
      itemCount: records.length,
      itemBuilder: (BuildContext context, int index) {
        return RecordListItem(records[index]);
      },
    );
  }
}
