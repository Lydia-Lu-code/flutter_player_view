// lib/player_view_widget.dart
// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PlayerViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
          ),
          // Positioned: 主要用在 Stack 內部，用來對 Stack 中的子 Widget 進行定位。
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              color: Color(0xFF8DC6A2),
              child: Center(child: Text('View')),
            ),
          ),
          Positioned(
            top: 230,
            child: Container(
              width: 70,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipOval(
                  child: Image.asset(
                    "assets/image01.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 230,
            left: 70,
            child: Container(
              width: MediaQuery.of(context).size.width - 70 - 50,
              height: 45,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Middle Text that might be long and needs to wrap into multiple lines',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 275,
            left: 70,
            child: Container(
              width: MediaQuery.of(context).size.width - 70 - 50,
              height: 25,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Tomorrow X together",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 230,
            left: MediaQuery.of(context).size.width - 50,
            child: Container(
              width: 50,
              height: 70,
              child: Center(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "...",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}