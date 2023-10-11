import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: screenHeight * 0.035),
      width: screenWidth,
      height: screenHeight,
      color: Colors.white,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(232, 232, 232, 100), width: 2),
                  color: Color.fromRGBO(246, 246, 246, 100),
                  borderRadius: BorderRadius.circular(35)),
              width: screenWidth * 0.75,
              height: screenHeight * 0.045,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.search_outlined),
                ),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                Text('Cari Layanan, Makanan')
              ]),
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            Container(
              width: screenWidth * 0.1,
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ikan.jpg')
                        as ImageProvider<Object>,
                  ),
                  Positioned(
                      bottom: screenHeight * 0.012,
                      left: screenWidth * 0.065,
                      child: Container(
                        width: screenWidth * 0.035,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white, width: 2)),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ))
                ],
              ),
            )
          ]),
    );
  }
}