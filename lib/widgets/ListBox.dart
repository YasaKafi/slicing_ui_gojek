import 'package:flutter/material.dart';

import '../themes.dart';

class ListBox extends StatelessWidget {
   ListBox({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.image,
    required this.title,
    required this.rating, 
    required this.distance,
  });

  final double screenWidth;
  final double screenHeight;
  final String image;
  final String title;
  final String rating;
  final String distance;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.01),
      width: screenWidth * 0.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.2),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              height: screenHeight * 0.134,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  distance,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(title, style: subheaderText),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.orange,
                      size: 20,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}