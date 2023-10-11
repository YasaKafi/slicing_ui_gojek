import 'package:flutter/material.dart';

class AppBarrTwo extends StatelessWidget {
  const AppBarrTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Flexible(
          flex: 4,
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromRGBO(232, 232, 232, 100), width: 2),
                color: Color.fromRGBO(246, 246, 246, 100),
                borderRadius: BorderRadius.circular(35)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.search_outlined),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Cari layanan, makanan & tujuan')
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1,
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/ikan.jpg') as ImageProvider<Object>,
              ),
              Positioned(
                  bottom: 10,
                  left: 27,
                  child: Container(
                    width: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.white, width: 2)),
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