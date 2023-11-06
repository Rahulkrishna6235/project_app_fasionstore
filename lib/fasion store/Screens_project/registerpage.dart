import 'package:fashion_store/firebasehelper.dart';
import 'package:fashion_store/screens/loginpage.dart';
import 'package:flutter/material.dart';

class FashionRegisteroage extends StatefulWidget {
  const FashionRegisteroage({super.key});

  @override
  State<FashionRegisteroage> createState() => _FashionRegisteroageState();
}

class _FashionRegisteroageState extends State<FashionRegisteroage> {
  final rnme = TextEditingController();

  final reml = TextEditingController();

  final rpass = TextEditingController();

  // var confirmpass; // to store value from password field
  bool showpwd = true;

  // bool showpwd2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              const Text(
                "Create Account",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Fill your information below for register"),
              const Text("with your social account."),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: rnme,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Name",
                    labelText: "Name",
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: reml,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Email",
                    labelText: "Email",
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: rpass,
                  obscureText: showpwd,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpwd) {
                              showpwd = false;
                            } else {
                              showpwd = true;
                            }
                          });
                        },
                        icon: Icon(showpwd == true
                            ? Icons.visibility
                            : Icons.visibility_off_sharp)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Password ",
                    labelText: "password",
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.check_box)),
                  const Text("Agree with"),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Terms & conditions",
                        style: TextStyle(color: Colors.brown),
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  height: 43,
                  width: 350,
                  child: ElevatedButton(
                      onPressed: () {
                        String username = reml.text.trim();
                        String password = rpass.text.trim();
                        FireHelper()
                            .signUp(email: username, pwd: password)
                            .then((message) {
                          if (message == null) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Fashionlogin()));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(message)));
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(fontSize: 15),
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("---------- or sign up with ----------"),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.apple_outlined)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.g_mobiledata_outlined)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook_outlined)),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Text("Already have an account?"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Fashionlogin()));
                    },
                    child: const Text(
                      "Sign In",
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
        ));
  }
}
