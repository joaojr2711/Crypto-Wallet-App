// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String title;

  const HeaderComponent({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(12),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey[700],
          ),
        ),

        // Title
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$title',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        // Notification
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(12),
          child: Icon(
            Icons.zoom_out_map,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
