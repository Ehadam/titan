import 'package:flutter/material.dart';
import 'package:titan/domains/records_list/record.dart';
import 'package:titan/util/sold_item_price.dart';
import 'package:titan/util/unsold_item_price.dart';

class RecordListItem extends StatelessWidget {
  final Record record;

  RecordListItem(this.record);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2,
        child: InkWell(
          splashColor: Colors.grey[400],
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  record.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                record.status == RecordStatus.SOLD
                    ? SoldItemPrice(record.salePrice)
                    : UnsoldItemPrice(record.purchasePrice),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
