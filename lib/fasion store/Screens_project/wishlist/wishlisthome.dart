import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:fashion_store/screens/mywishlist/wishlistpages/All.dart';
import 'package:fashion_store/screens/mywishlist/wishlistpages/jakets.dart';
import 'package:fashion_store/screens/mywishlist/wishlistpages/pant.dart';
import 'package:fashion_store/screens/mywishlist/wishlistpages/sari.dart';
import 'package:fashion_store/screens/mywishlist/wishlistpages/shirt.dart';
import 'package:fashion_store/screens/mywishlist/wishlistpages/tshrt.dart';
import 'package:flutter/material.dart';


class WishTabBar extends StatefulWidget {
  const WishTabBar({super.key});

  @override
  State<WishTabBar> createState() => _WishTabBarState();
}

class _WishTabBarState extends State<WishTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
              color: Colors.black
          ),
          title: Text("My Wishlist",style: TextStyle(fontSize: 20,color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: ButtonsTabBar(
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              radius: 20,
              backgroundColor: Colors.brown,
              unselectedBackgroundColor: Colors.white,
              unselectedLabelStyle: TextStyle(color: Colors.black),
              labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: "    All    ",
                ),
                Tab(
                  text: "   Jacket   ",
                ),
                Tab(
                  text: "   Shirt   ",
                ),
                Tab(
                  text: "   Pant   ",
                ),
                Tab(
                  text: "   T-Shirt   ",
                ),
                Tab(
                  text: "   Top    ",
                ),
              ]
          ),
        ),
        body: TabBarView(children: [
          WishAllProduct(),
          WishJaketsProduct(),
          TShirtGrid(),
          SariGrid(),
          ShirtGrid(),
          WishPantProduct(),
        ]),
      ),
    );
  }
}
