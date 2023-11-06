import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
void main(){
  runApp(MaterialApp(home: progrid(),));
}

class progrid extends StatefulWidget {
  const progrid({super.key});

  @override
  State<progrid> createState() => _progridState();
}

class _progridState extends State<progrid> {
  @override
  Widget build(BuildContext context) {
    List imagelist=[
      "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
      "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
      "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
      "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
      "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
      "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
      "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
      "assets/images/WhatsApp Image 2023-10-09 at 22.48.03.jpeg",
    ];

    List textlist=[
      "Appam and curry",
      "puttum kadala",
      "Idaly sambar",
      "Idiyappam & curry",
      "poori and curry",
      "uppumavu",
    ];
    return
      Scaffold(
          body:Column(
            children: [
              SizedBox(
                height: 600,
                child: SafeArea(
                  child:
                  GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1,
                      mainAxisSpacing: 10,crossAxisSpacing: 10
                  ),
                      itemCount: imagelist.length,
                      itemBuilder:(context,index){
                        return
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                            width: 220,height: 260,
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
                                      Container(height: 120,width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(image: AssetImage(imagelist[index]),
                                            fit: BoxFit.fill,
                                          )
                                        ),
                                        child: Transform.translate(offset: Offset(50, -40),
                                          child: Container(
                                            margin: EdgeInsets.symmetric(horizontal: 60,vertical: 55),

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white
                                            ),
                                            child: Icon(Icons.favorite_border),
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
                                        initialRating: 1,minRating: 1,
                                        direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                                        onRatingUpdate: (rating){
                                          print("rating");
                                        }),
                                  ],
                                ),
                                Text(textlist[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          );
                      }),
                ),
              )
            ],
          )

      );
  }
}
