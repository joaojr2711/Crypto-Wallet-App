// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class WalletComponent extends StatelessWidget {
  final String title;
  final String balance;
  final String textStatus;
  final String descriptionStatus;
  final color;
  final icon;
  final colorStatus;
  final iconStatus;

  const WalletComponent({
    Key? key,
    required this.title,
    required this.color,
    required this.icon,
    required this.balance,
    required this.textStatus,
    required this.descriptionStatus,
    required this.colorStatus,
    required this.iconStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 38,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '$balance',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  iconStatus,
                  color: colorStatus,
                  size: 22,
                ),
                Text(
                  '$textStatus',
                  style: TextStyle(
                    color: colorStatus,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '($descriptionStatus)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
