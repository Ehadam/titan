import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UnsoldItemPrice extends StatelessWidget {
  final double purchasePrice;
  static final currencyFormat =
      NumberFormat.currency(decimalDigits: 2, symbol: '\$');

  UnsoldItemPrice([this.purchasePrice]);

  @override
  Widget build(BuildContext context) {
    return Text(currencyFormat.format(purchasePrice),
        style: new TextStyle(
          color: new Color(0xFFD23D34),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ));
  }
}
