import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  ContactRow({required this.labelName, required this.labelValue, super.key});

  String labelValue;
  String labelName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            labelName,
            // textAlign: TextAlign.end,
            style: TextStyle(fontSize: 24),
          ),
        ),Expanded(
          child: Text(
            labelValue,
            // textAlign: TextAlign.end,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}