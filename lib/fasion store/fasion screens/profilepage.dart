import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: complete_profile(),
  ));
}

class complete_profile extends StatefulWidget {
  const complete_profile({Key? key}) : super(key: key);

  @override
  State<complete_profile> createState() => _complete_profileState();
}

class _complete_profileState extends State<complete_profile> {
  final List<String> items = [
    'Male',
    'Female'
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
            children: [
              const Center(
                  child: Text(
                    "Complete your profile",
                    style: TextStyle(fontSize: 30),
                  )),
              const SizedBox(
                height: 5,
              ),
              const Text("Don't worry,only you can see your personal"),
              const SizedBox(
                height: 5,
              ),
              const Text("data.No one else will be able to it"),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          //color: Theme.of(context).scaffoldBackgroundColor
                        ),
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80"),
                        ),),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.brown
                          ),
                          child: const Icon(Icons.edit),
                          // color: Colors.white,),
                        ),
                      ),)
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
                width: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Name",
                ),

              ),
              const SizedBox(
                height: 30,
                width: 10,
              ),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Enter Phone Number",
                ),

              ),
              const SizedBox(
                height: 30,
                width: 10,
              ),
              Container(height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: DropdownButton(items:  items
                    .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ))
                    .toList(),
                     dropdownColor: Colors.white,
                     hint: Text("Gender"),
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 40,
                    isExpanded: true,
                    value: selectedValue,
                     onChanged: (String? value){
                      setState(() {
                        selectedValue=value;
                      });
                     })
              ),

              SizedBox(height: 30,),
              Center(
                child: Container(
                  height: 53,width: 380,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),),
                    child:
                    Text("Complete profile",style: TextStyle(fontSize: 20),),
                  ),
                ),
              ),
            ]
        ),
      ),
    );

  }
}