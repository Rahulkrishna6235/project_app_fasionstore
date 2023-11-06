import 'package:fashion_store/screens/productscreens/product_category_screen/all_products.dart';
import 'package:flutter/material.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _TabbarState();
}

class _TabbarState extends State<HomeTabBar> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this,initialIndex: 0)..addListener(() {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          TabBar(
              isScrollable: true,
              indicatorPadding: const EdgeInsets.all(10),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              labelPadding: const EdgeInsets.only(
                  left: 30,right: 30,top: 10,bottom: 10
              ),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.brown
              ),
              controller: _tabController,
              tabs: const [
                Text("ALL"),
                Text("Newest"),
                Text("Popular"),
                Text("Man"),
                Text("Woman"),
                Text("Kids"),

              ]),
          SizedBox(
            height: 750,
            child: TabBarView(
                controller: _tabController,
                children:   [
                  HomeAllProduct(),
                  Text("All Item Will Display"),
                  Text("Jacket Item Will Display"),
                  Text("Shirt Item Will Display"),
                  Text("Pant Item Will Display"),
                  Text("T-Shirt Item Will Display"),
                  // Text("Top Item Will Display"),
                ]),
          )
        ],

      );
  }
}
