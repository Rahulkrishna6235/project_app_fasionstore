import 'package:flutter/material.dart';

import '../../filterScreen/filter.dart';

class AppbarHome extends StatefulWidget {
  const AppbarHome({super.key});

  @override
  State<AppbarHome> createState() => _AppbarHomeState();
}

String dropdownvalue = 'india';
var items =[
  'india',
  'pakistan',
];

class _AppbarHomeState extends State<AppbarHome> {
  @override
  Widget build(BuildContext context) {
    return
      CustomScrollView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            floating: true,
            pinned: false,
            backgroundColor: Colors.white,
            leadingWidth: 150,
            leading: ListView(
              // mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Location",style: TextStyle(color: Colors.grey),),
                Row(
                  children: [
                    Icon(Icons.location_on_rounded,color: Colors.brown,),
                    DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? value){
                          setState(() {
                            dropdownvalue = value!;
                          });
                        })
                  ],
                )


              ],

            ),
            // Row(
            //   children: [
            //     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down)),
            //   ],
            //),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notification_add,color: Colors.black,size: 30,))
            ],
            bottom: AppBar(

              elevation: 0,
              backgroundColor: Colors.white,
              leadingWidth: 330,
              leading: Container(
                width: double.infinity,
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                          borderSide: BorderSide(width: 5,color: Colors.brown)
                      ),
                      hintText: "Search Here",
                      prefixIcon: Icon(Icons.search_rounded)),
                ),
              ),
              actions: [
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),


                  child: IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>Filterpage()));
                  }, icon: Image.asset("assets/icons/equalizer.png",color: Colors.white,),style: ButtonStyle(shape: MaterialStateProperty.all(CircleBorder()),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5))),),
                ),

              ],
            ),
          ),
        ],
      );
  }
}
