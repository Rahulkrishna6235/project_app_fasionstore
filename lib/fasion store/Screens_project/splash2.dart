import 'package:fashion_store/screens/loginpage.dart';
import 'package:flutter/material.dart';


class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 400,
                    width: 170,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1685464583529-7f527c50e22f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQwfHxzdHlsZSUyMG1vZGVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(80),
                      // color: Colors.brown,
                    ),
                  ),
                ),
                // Padding(
                //   // padding: const EdgeInsets.only(bottom: 125),
                //   child:
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1685464583529-7f527c50e22f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQwfHxzdHlsZSUyMG1vZGVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(70),
                          // color: Colors.brown,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1685464583529-7f527c50e22f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQwfHxzdHlsZSUyMG1vZGVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(100),
                          // color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "The Fashion App That",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Makes You Look Your Best",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Lorem ipsum dolor site amet,concectetor"),
            const SizedBox(height: 6),
            const Text("adipisingedit,sed do elumbsed tembor incident"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 43,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Lets Get Started")),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Text("Already have an account?"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fashionlogin()));
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
      ),
    );
  }
}
