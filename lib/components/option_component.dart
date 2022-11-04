// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class OptionComponent extends StatelessWidget {
  final String title;
  final icon;

  const OptionComponent({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Icon
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey[100],
            child: Icon(
              icon,
              color: Colors.grey[700],
            ),
          ),
        ),

        SizedBox(height: 8),

        // Title
        Text(
          '$title',
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
