import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ListView(
        shrinkWrap: true,
        // physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Category",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Colors.black),))
            ],
          ),
          //SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,width: 60,
                child: Icon(FontAwesomeIcons.shirt),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.brown.shade100
                ),
              ),
              Container(
                height: 60,width: 60,
                child: Icon(FontAwesomeIcons.shirt),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.brown.shade100
                ),
              ),
              Container(
                height: 60,width: 60,
                child: Icon(FontAwesomeIcons.personDress),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.brown.shade100
                ),
              ),
              Container(
                height: 60,width: 60,
                child: Icon(FontAwesomeIcons.personHalfDress),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.brown.shade100
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("T shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                Text("T shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                Text("T shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                Text("T shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              ],
            ),
          ),

        ],
      );
  }
}
