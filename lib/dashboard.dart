import 'package:flutter/material.dart';
import 'themes.dart';
import 'package:ionicons/ionicons.dart';
import 'widgets/AppBar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/IconBox.dart';
import 'widgets/ListBox.dart';
import 'widgets/MenuBox.dart';
import 'data.dart';

class MyHomePage extends StatelessWidget {
  
    
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace:
            CustomAppBar(screenHeight: screenHeight, screenWidth: screenWidth),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset('assets/promo3.WEBP'),
                Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.26),
                    padding: EdgeInsets.only(top: screenHeight * 0.05),
                    width: screenWidth,
                    height: screenHeight * 0.29,
                    color: Colors.white,
                    child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 5,
                          ),
                          itemCount: menuItems.length,
                          itemBuilder: (BuildContext context, int index) {
                            final menuItem = menuItems[index];
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 0),
                              child: Column(
                                children: [
                                  Image.asset(menuItem['imagePath']),
                                  const SizedBox(height: 8),
                                  Text(
                                    menuItem['title'],
                                    textAlign: TextAlign.center,
                                    style: appBarText,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.225),
                    width: screenWidth * 0.90,
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 2.0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: screenWidth * 0.03),
                          width: screenWidth * 0.1,
                          height: screenHeight * 0.1,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(153, 215, 215, 215),
                              shape: BoxShape.circle),
                          child: Image.asset('assets/wallet.png'),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.02,
                                      top: screenHeight * 0.01),
                                  child: Text(
                                    'Rp1.520',
                                    style: moneyText,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.02,
                                      top: screenHeight * 0.01),
                                  width: screenWidth * 0.05,
                                  height: screenHeight * 0.03,
                                  child: Icon(
                                    Ionicons.add_circle_outline,
                                    size: 22,
                                    color: Colors.green.shade800,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: screenWidth * 0.02,
                              ),
                              padding: EdgeInsets.only(
                                  right: screenWidth * 0.085,
                                  bottom: screenHeight * 0.01),
                              child: Text(
                                '1.270 coins',
                                style: moneyMiniText,
                              ),
                            )
                          ],
                        ),
                        IconBox(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight),
                        Container(
                          margin: EdgeInsets.only(left: screenWidth * 0.025),
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                    top: screenHeight * 0.01,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  width: screenWidth * 0.065,
                                  height: screenHeight * 0.03,
                                  child: Image.asset(
                                    'assets/history.png',
                                  )),
                              Text(
                                'Riwayat',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.12,
                          margin: EdgeInsets.only(
                            left: screenWidth * 0.025,
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: screenHeight * 0.01,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.blue.shade400,
                                          shape: BoxShape.circle),
                                      width: 24.7,
                                      height: 24.7,
                                      child: Icon(
                                        Icons.more_horiz_rounded,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 6,
                                      bottom: 15,
                                      child: Container(
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(
                                            top: screenHeight * 0.01,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.red.shade600,
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1),
                                              shape: BoxShape.circle),
                                          width: 16,
                                          height: 16,
                                          child: Text(
                                            '3',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )))
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Lainnya',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    child: Text(
                      'Resto dengan rating jempolan',
                      style: headerText,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.05, top: screenHeight * 0.01),
                    child: Text(
                      'Disponsori',
                      style: commonText,
                    ),
                  ),
                  SizedBox(
                      height: screenHeight * 0.272,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listData.length,
                        itemBuilder: (context, index) {
                          final item = listData[index];
                          return ListBox(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            image: item['image'],
                            title: item['title'],
                            rating: item['rating'],
                            distance: item['distance'],
                          );
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
