import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class slidefasion extends StatefulWidget {
  const slidefasion({super.key});

  @override
  State<slidefasion> createState() => _slidefasionState();
}

class _slidefasionState extends State<slidefasion> {
  List <String> _cliderimages=["img"];

  fetchCarouselImages()async{
    var _firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot qn = await _firestoreInstance.collection("clider").get();
    setState(() {
      for(int i=0; i<qn.docs.length; i++){
        _cliderimages.add(
          qn.docs[i]["img"],
        );
        print("${qn.docs[i]["img"]}");
      }
    });
    return qn.docs;
  }
  @override
  void initState() {
    fetchCarouselImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return
      Container(height: 200,width: 400,
        child:
        CarouselSlider(
            items: _cliderimages.map((item) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(item),fit: BoxFit.cover)
              ),
            )).toList(),
            options:CarouselOptions(
              scrollPhysics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              height: 400,
              aspectRatio: 2.0,
              viewportFraction: 1,
              initialPage: 3,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 0),
              enableInfiniteScroll: true,
              autoPlayCurve: Curves.easeInOutCubicEmphasized,
              enlargeCenterPage: false,
              enlargeFactor: .1,
              scrollDirection: Axis.horizontal,
            )
        ),
      );
  }
}
