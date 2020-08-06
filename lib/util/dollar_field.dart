import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class DollarField extends StatefulWidget {
  final String label;

  DollarField({this.label});

  @override
  _DollarFieldState createState() => _DollarFieldState();
}

class _DollarFieldState extends State<DollarField> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(text: '\$0.00');
    _controller.addListener(() {
      // _controller.text = formatString(_controller.text);
    });
  }

  String formatString(newValue) {
    NumberFormat format = NumberFormat.currency(locale: 'en_US');
    String value;
    if (newValue == null || newValue == '') {
      value = '\$0.00';
    } else if (true) {
      value = '\$$newValue';
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(labelText: widget.label),
      keyboardType: TextInputType.number,
      // inputFormatters: <TextInputFormatter>[
        // WhitelistingTextInputFormatter.digitsOnly,
      // ],
    );
  }
}
