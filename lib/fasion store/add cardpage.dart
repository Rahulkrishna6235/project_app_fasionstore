import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AddCard(),));
}
class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text("filter",style: TextStyle(color: Colors.black),)),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,0,10,0),
              child: Container(
                height: 200,width: 100,
                //color: Colors.brown,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  fit: StackFit.loose,
                  children: [
                    Positioned(
                      bottom: 80,
                      child: Container(
                        width: 220,height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(120),
                            color: Colors.white60
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 80,
                      child: Container(
                        width: 150,height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.white38
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("VISA",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                    Positioned(top: 100,right: 40,
                        child: Text("4717   4595   3512   5045",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    Positioned(top: 140,left: 40,
                        child: Text("Card Holder Name",style: TextStyle(color: Colors.white),)),
                    Positioned(top: 140,left: 180,
                        child: Text("Expiry Date",style: TextStyle(color: Colors.white),)),


                    Positioned(bottom: 25,left: 40,
                        child: Text("Example Name",style: TextStyle(color: Colors.white),)),
                    Positioned(bottom: 25,left: 180,
                        child: Text("02/30",style: TextStyle(color: Colors.white),)),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Card Holder Name",style: TextStyle(fontSize: 15,),),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            Text("Card Number",style: TextStyle(fontSize: 15,),),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Expiry Date",style: TextStyle(fontSize: 15,),),
                Padding(
                  padding: const EdgeInsets.only(right: 195),
                  child: Text("cvv",style: TextStyle(fontSize: 15,),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Checkbox(value: ischecked,
                  onChanged: (value){
                    setState(() {
                      ischecked=value!;
                    });
                  },
                  activeColor: Colors.brown,

                ),
                Text("Save card",style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
      floatingActionButton:Padding(
        padding: const EdgeInsets.fromLTRB(35,0,35,0),
        child: Container(
          height: 50,
          width: 400,
          //color: Colors.indigoAccent,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text("Add  Card")),
        ),
      ),
    );
  }
}
