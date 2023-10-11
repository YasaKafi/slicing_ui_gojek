import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    this.leftMargin = 0.12,
  });

  final double screenWidth;
  final double screenHeight;
  final double leftMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: screenWidth * leftMargin),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: screenHeight * 0.01,
            ),
            decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius:
                    BorderRadius.all(Radius.circular(10))),
            width: screenWidth * 0.06,
            height: screenHeight * 0.0278,
            child: Icon(
              Icons.arrow_upward_rounded,
              size: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Bayar',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}