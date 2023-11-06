import 'package:fashion_store/screens/registerpage.dart';
import 'package:flutter/material.dart';

import '../firebasehelper.dart';
import 'homescreen/components/bottombar.dart';

class Fashionlogin extends StatefulWidget {


  Fashionlogin({super.key});

  @override
  State<Fashionlogin> createState() => _FashionloginState();
}

class _FashionloginState extends State<Fashionlogin> {
  final eml = TextEditingController();

  final pass = TextEditingController();

  bool showpwd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              "sign in",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Hi welcome back,you've been missed"),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: eml,
                decoration: InputDecoration(
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: "Email",
                  labelText: "Email",

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: pass,
                obscureText: showpwd,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState (() {
                          if (showpwd){
                            showpwd = false;
                          }else{
                            showpwd = true;
                          }
                        });
                      },
                      icon: Icon(showpwd == true
                          ? Icons.visibility
                          : Icons.visibility_off_sharp)),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: "Password ",
                  labelText: "password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",style: TextStyle(color: Colors.brown),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                    onPressed: () {
                      String username = eml.text.trim();
                      String password = pass.text.trim();

                      FireHelper().signIn(email:username,pass:password).then((value) {
                        if(value == null){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=>page1bn()));
                        }else{
                          ScaffoldMessenger.of(context).
                          showSnackBar(SnackBar(content: Text(value)));
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.brown,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                    child: const Text("Sign In",style: TextStyle(fontSize: 15),)),
              ),
            ),
            const SizedBox(height: 40,),
            const Text("----------or sign in with----------"),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.apple_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.facebook_outlined)),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 85),
                  child: Text("don't have an account?"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FashionRegisteroage()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.brown,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
