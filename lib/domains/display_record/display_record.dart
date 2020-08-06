import 'package:flutter/material.dart';
import 'package:titan/domains/records_list/record.dart';

class DisplayRecord extends StatelessWidget {
  final Record record;

  DisplayRecord({this.record});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(record.title),
        Text(record.purchaseDate.toIso8601String()),
        Text(record.purchasePrice.toString()),
        Text(record.saleDate.toIso8601String()),
        Text(record.salePrice.toString()),
        Text(record.status.toString()),
        // TODO: Add carousel using carousel_slider package
      ],
    );
  }
}
