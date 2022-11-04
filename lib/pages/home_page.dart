// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/header_component.dart';
import '../components/option_component.dart';
import '../components/wallet_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Scroll controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Column(
                children: [
                  // Header
                  HeaderComponent(
                    title: 'My Portifolio',
                  ),

                  SizedBox(
                    height: 65,
                  ),

                  // Value
                  Text(
                    '\$14,130.14',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  // Status
                  Container(
                    width: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent[700],
                        borderRadius: BorderRadius.circular(28)),
                    padding: EdgeInsets.all(6),
                    child: Text(
                      '+ 0.52%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 35,
                  ),

                  // Cryptos
                  Container(
                    height: 200,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: _controller,
                      children: [
                        WalletComponent(
                          title: 'BTC',
                          color: Colors.yellow.shade700,
                          icon: CryptoFontIcons.BTC,
                          balance: '\$1,295,25',
                          iconStatus: Icons.keyboard_arrow_down,
                          colorStatus: Colors.green.shade700,
                          textStatus: '0.35%',
                          descriptionStatus: '26267,15 USD',
                        ),
                        WalletComponent(
                          title: 'ETH',
                          color: Colors.grey.shade400,
                          icon: CryptoFontIcons.ETH,
                          balance: '\$1,500',
                          iconStatus: Icons.keyboard_arrow_down,
                          colorStatus: Colors.green.shade700,
                          textStatus: '0.80%',
                          descriptionStatus: '23144550,00 USD',
                        ),
                        WalletComponent(
                          title: 'DGD',
                          color: Colors.yellowAccent[700],
                          icon: CryptoFontIcons.DGD,
                          balance: '\$703,35',
                          iconStatus: Icons.keyboard_arrow_down,
                          colorStatus: Colors.red[600],
                          textStatus: '-26,87%',
                          descriptionStatus: '73,35 USD',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // Indicator
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.grey.shade800,
                      dotHeight: 8,
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  // Options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quick Actions',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 75,
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.grey[700],
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OptionComponent(
                        title: 'Send',
                        icon: Icons.call_made,
                      ),
                      OptionComponent(
                        title: 'Receive',
                        icon: Icons.call_received,
                      ),
                      OptionComponent(
                          title: 'Swipe', icon: Icons.compare_arrows),
                      OptionComponent(
                        title: 'Buy',
                        icon: Icons.add_circle_outline,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16),
                      color: Colors.grey[850],
                      width: 350,
                      height: 55,
                      child: Text(
                        'Convert',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
