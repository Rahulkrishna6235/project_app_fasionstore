import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      //physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      physics: const AlwaysScrollableScrollPhysics(),

      children: [
        //SizedBox(height: 5),
        Row(
          children: [
            Text("Flash Sale",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ],
        )
      ],
    );
  }
}
