import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SoldItemPrice extends StatelessWidget {
  final double salePrice;
  static final currencyFormat =
      NumberFormat.currency(decimalDigits: 2, symbol: '\$');

  SoldItemPrice([this.salePrice]);

  @override
  Widget build(BuildContext context) {
    return Text(currencyFormat.format(salePrice),
        style: new TextStyle(
          color: new Color(0xFF37D234),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ));
  }
}
