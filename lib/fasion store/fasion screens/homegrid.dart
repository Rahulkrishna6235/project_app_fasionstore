import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _listItem = [
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg', "isSaved": true},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54 (1).jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54 (1).jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54 (1).jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54 (1).jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54 (1).jpeg', "isSaved": false},
    {"image": 'assets/images/WhatsApp Image 2023-10-09 at 22.48.54 (1).jpeg', "isSaved": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: _listItem
            .map(
              (item) => Card(
            child: Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 30,
                          // height: 30,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Center(
                            child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  item["isSaved"] = !item["isSaved"];
                                });
                              },
                              color: Colors.white,
                              height: 40,
                              minWidth: 40,
                              padding: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                  item["isSaved"]
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  size: 22,
                                  color: item["isSaved"]
                                      ? Colors.brown[700]
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child:
                          Image.asset(item["image"], fit: BoxFit.contain)),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'title',
                            style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.star_border_outlined,
                          )

                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            'subtitle',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}