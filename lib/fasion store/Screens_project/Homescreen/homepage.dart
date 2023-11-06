import 'package:fashion_store/screens/homescreen/components/appbar.dart';
import 'package:fashion_store/screens/homescreen/components/categorys.dart';
import 'package:fashion_store/screens/homescreen/components/flashsale.dart';
import 'package:fashion_store/screens/homescreen/components/hometabbar.dart';
import 'package:fashion_store/screens/homescreen/components/slider.dart';
import 'package:flutter/material.dart';

import 'components/category.dart';


class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int pageindex=0;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body:
      SingleChildScrollView(
        child: Column(
          //shrinkWrap: true,
          //physics: const ScrollPhysics(),
          children: [
            AppbarHome(),
            SizedBox(height: 15,),
            slidefasion(),
            Page3(),
            Page4(),
            SizedBox(height: 10,),
            HomeTabBar(),

          ],
        ),
      ),
    );
  }
}
