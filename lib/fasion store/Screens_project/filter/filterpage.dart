import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Filterpage extends StatefulWidget {
  const Filterpage({super.key});

  @override
  State<Filterpage> createState() => _FilterpageState();
}

class _FilterpageState extends State<Filterpage> {
  RangeValues _currentrangevalue = const RangeValues(0, 100);
  String? reviews;
  @override
  Widget build(BuildContext context) {
    RangeLabels labels=RangeLabels(_currentrangevalue.start.round().toString(), _currentrangevalue.end.round().toString());
    return Scaffold(
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text("filter",style: TextStyle(color: Colors.black),)),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Text("Brands",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 10,),
            DefaultTabController(
              length: 6,
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ButtonsTabBar(
                    physics:const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    radius: 20,
                    backgroundColor: Colors.brown,
                    unselectedBackgroundColor: Colors.white,
                    unselectedLabelStyle: const TextStyle(color: Colors.black),
                    labelStyle:
                    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    tabs: [
                      const Tab(
                        text: "    All    ",
                      ),
                      const Tab(
                        text: "   Addidas   ",
                      ),
                      const Tab(
                        text: "   Puma   ",
                      ),
                      const Tab(
                        text: "   Nike   ",
                      ),
                      const Tab(
                        text: "   otto   ",
                      ),
                      const Tab(
                        text: "  tommy    ",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("Gender",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 10,),
            DefaultTabController(
              length: 3,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 230),
                    child: ButtonsTabBar(
                      physics:const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      radius: 20,
                      backgroundColor: Colors.brown,
                      unselectedBackgroundColor: Colors.white,
                      unselectedLabelStyle: const TextStyle(color: Colors.black),
                      labelStyle:
                      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: [
                        const Tab(
                          text: "    All    ",
                        ),
                        const Tab(
                          text: "   Men   ",
                        ),
                        const Tab(
                          text: "   Women   ",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("Sort By",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 10,),
            DefaultTabController(
              length: 5,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ButtonsTabBar(
                      physics:const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      radius: 20,
                      backgroundColor: Colors.brown,
                      unselectedBackgroundColor: Colors.white,
                      unselectedLabelStyle: const TextStyle(color: Colors.black),
                      labelStyle:
                      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: [
                        const Tab(
                          text: "    Most Recent    ",
                        ),
                        const Tab(
                          text: "   Popular   ",
                        ),
                        const Tab(
                          text: "   Price High   ",
                        ),
                        const Tab(
                          text: "   Price Low   ",
                        ),
                        const Tab(
                          text: "   Medium   ",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("Pricing Range",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Start"),
                Expanded(
                  child: RangeSlider(values: _currentrangevalue,
                      labels: labels,
                      max: 100,
                      divisions: 10,
                      inactiveColor: Colors.brown.shade100,
                      activeColor: Colors.brown,
                      onChanged: (newvalue){
                        _currentrangevalue=newvalue;
                        print('${newvalue.start},${newvalue.end}');
                        setState(() {
                          _currentrangevalue=newvalue;
                        });
                      }
                  ),
                ),
                Text("End")
              ],
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading:  RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                        itemCount: 5,
                        initialRating: 3,minRating: 1,
                        direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                        onRatingUpdate: (rating){
                          print("rating");
                        }),
                    trailing: Radio(
                        activeColor: Colors.brown,
                        value: 'rw1', groupValue:reviews, onChanged:(value){
                      setState(() {
                        reviews=value;
                      });
                    }),
                  ),
                  ListTile(
                    leading:  RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                        itemCount: 5,
                        initialRating: 3,minRating: 1,
                        direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                        onRatingUpdate: (rating){
                          print("rating");
                        }),
                    trailing: Radio(
                        activeColor: Colors.brown,
                        value: 'rw2', groupValue:reviews, onChanged:(value){
                      setState(() {
                        reviews=value;
                      });
                    }),
                  ),
                  ListTile(
                    leading:  RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                        itemCount: 5,
                        initialRating: 3,minRating: 1,
                        direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                        onRatingUpdate: (rating){
                          print("rating");
                        }),
                    trailing: Radio(
                        activeColor: Colors.brown,
                        value: 'rw3', groupValue:reviews, onChanged:(value){
                      setState(() {
                        reviews=value;
                      });
                    }),
                  ),
                  ListTile(
                    leading:  RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                        itemCount: 5,
                        initialRating: 3,minRating: 1,
                        direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                        onRatingUpdate: (rating){
                          print("rating");
                        }),
                    trailing: Radio(
                        activeColor: Colors.brown,
                        value: 'rw4', groupValue:reviews, onChanged:(value){
                      setState(() {
                        reviews=value;
                      });
                    }),
                  ),
                  ListTile(
                    leading:  RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                        itemCount: 5,
                        initialRating: 3,minRating: 1,
                        direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                        onRatingUpdate: (rating){
                          print("rating");
                        }),
                    trailing: Radio(
                        activeColor: Colors.brown,
                        value: 'rw5', groupValue:reviews, onChanged:(value){
                      setState(() {
                        reviews=value;
                      });
                    }),
                  ),
                  ListTile(
                    leading:  RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                        itemCount: 5,
                        initialRating: 3,minRating: 1,
                        direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                        onRatingUpdate: (rating){
                          print("rating");
                        }),
                    trailing: Radio(
                        activeColor: Colors.brown,
                        value: 'rw6', groupValue:reviews, onChanged:(value){
                      setState(() {
                        reviews=value;
                      });
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 43,
            width: 170,
            child: Padding(
              padding: const EdgeInsets.only(left: 34),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown.shade100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Reset Filter",style: TextStyle(color: Colors.brown),)),
            ),
          ),
          SizedBox(
            height: 43,
            width: 150,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text("Submit")),
          ),
        ],
      ),
    );
  }
}
