import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:fashion_store/screens/chatpage/chathome.dart';
import 'package:fashion_store/screens/myaccount/MyAccounthome.dart';
import 'package:flutter/material.dart';

import '../../cartpage/cartpagehome.dart';
import '../../mywishlist/wishlisthome.dart';
import '../homepage.dart';

class page1bn extends StatefulWidget {
  const page1bn({super.key});

  @override
  State<page1bn> createState() => _page1bnState();
}

class _page1bnState extends State<page1bn> {
  int currentindex=0;
  int pageindex=0;
  List pages=[
    MainHome(),
    AddCard(),
    WishTabBar(),
    ChatHome(),
    MyAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        floatingActionButton:
        Padding(
          padding: const EdgeInsets.only(left: 35,),
          child: Container(
            height: 65,
            child: CustomNavigationBar(
              isFloating: true,
              borderRadius: Radius.circular(40),
              selectedColor: Colors.white,
              unSelectedColor: Colors.grey[700],
              backgroundColor: Colors.black,
              strokeColor: Colors.transparent,
              scaleFactor: 0.1,
              iconSize: 40,

              items:[
                CustomNavigationBarItem(icon: Icon(Icons.home)),
                CustomNavigationBarItem(icon: Icon(Icons.card_travel_rounded)),
                CustomNavigationBarItem(icon: Icon(Icons.favorite_border)),
                CustomNavigationBarItem(icon: Icon(Icons.message_outlined)),
                CustomNavigationBarItem(icon: Icon(Icons.person_2_rounded)),
              ],

              currentIndex: currentindex,
              onTap: (index){
                setState((
                    ) {
                  currentindex=index;
                  pageindex=index;
                });
              },
            ),
          ),
        ),
        body: pages[pageindex],
      );
  }
}
