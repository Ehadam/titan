import 'package:flutter/material.dart';
import 'package:titan/domains/records_list/record.dart';
import 'package:titan/util/date_field.dart';
import 'package:titan/util/dollar_field.dart';

class AddRecord extends StatefulWidget {
  String status;

  @override
  _AddRecordState createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  List<DropdownMenuItem> generateRecordMenuItems() {
    List<String> test = RecordStatusExtension.getStringList();
    List<DropdownMenuItem> anotherTest = test.map((element) {
      return DropdownMenuItem(child: Text(element), value: element,);
    }).toList();
    return anotherTest;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Title'),
        ),
        DollarField(label: 'Purchase Price'),
        DateField(label: 'Purchase Date'),
        DollarField(label: 'Sale Price'),
        DateField(label: 'Purchase Date'),
        DropdownButton(
          hint: Text('Status'),
          items: generateRecordMenuItems(),
          value: widget.status == null ? null : widget.status,
          onChanged: (item) {
            setState(() => widget.status = item.toString());
          },
        ),
      ],
    );
  }
}
