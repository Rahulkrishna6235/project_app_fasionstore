import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SariGrid extends StatefulWidget {
  @override
  State<SariGrid> createState() => _SariGridState();
}

class _SariGridState extends State<SariGrid> {

  List<QueryDocumentSnapshot> data = [];

  getData() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection(
        "Products").doc('wWwgVMvDxEIjcb2yRbY7').collection('Man-T-shirt').get();
    data.addAll(querySnapshot.docs);
    setState(() {

    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 210
        ),
        itemBuilder: (context,i){
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage("${data[i]['img']}"),
                        fit: BoxFit.cover),),
                  child: Stack(
                    children: [
                      Positioned(
                          left:110,
                          child: Container(
                              height: 50,
                              width: 50,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.brown,))
                          ))
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 21),
                    child: Text(
                      "${data[i]['Name']}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                  ),
                  Text("5.0"),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 22),
                    child: Text('\u{20B9} ${data[i]['price']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 15),),
                  ),
                ],
              )
            ],
          );
        }
    );
  }
}
