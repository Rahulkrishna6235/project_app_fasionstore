import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool _isfavorited=false;
int _favoriteCount=0;

void _toggleFavorite(){
  setState(() {
    if(_isfavorited){
      _isfavorited=false;
    }else{
      _isfavorited=true;
    }
  });
}

  List imagelist=[
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52 (2).jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52 (2).jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52 (2).jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg",
    "aassets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.54.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52.jpeg",
    "assets/images/WhatsApp Image 2023-10-09 at 22.48.52.jpeg"
  ];

  List textlist=[
    "jacket",
    "jacket",
    "jacket",
    "jacket",
    "jacket",
    "jacket",
    "jacket",
    "jacket",
    "jacket",
    "jacket",
    "shirt",
    "shirt",
    "shirt",
    "shirt",
    "shirt",

  ];
  List text2=[
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: Expanded(
          child:  GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1,
              mainAxisSpacing: 10,crossAxisSpacing: 10
          ),
              itemCount: imagelist.length,
              itemBuilder:(context,index){
                return
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 1,horizontal: 12),
                    width: 220,height: double.infinity,
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 0,
                              spreadRadius: 0
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){},
                          child:Expanded(
                            child:
                            Container(height: 150,width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image: AssetImage(imagelist[index]),
                                    fit: BoxFit.fill,
                                  )
                              ),

                              child: Transform.translate(offset: Offset(50, -40),
                                child: Container(

                                  margin: EdgeInsets.symmetric(vertical: 56,horizontal: 65),

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white60,
                                  ),
                                  child:IconButton(onPressed: _toggleFavorite,
                                      icon:(_isfavorited
                                          ?const Icon(Icons.favorite)
                                      :const Icon(Icons.favorite_border)
                                      ),
                                    color: Colors.brown,
                                  )
                                  //Icon(Icons.favorite_border,),
                                ),
                              ),
                              // child: Expanded(
                              //   child: SizedBox(
                              //     width: 220,height: 150,
                              //
                              //
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(textlist[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                                itemCount: 1,
                                initialRating: 1,minRating: 0,
                                direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                                onRatingUpdate: (rating){
                                  print("rating");
                                }),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 110),
                          child: Text(text2[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  );
              }),
        ),

      ),

    );
  }
}