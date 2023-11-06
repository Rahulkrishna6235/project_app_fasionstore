import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser; // to fetch the current logged in user

  Future<String?> signUp({required String email, required String pwd}) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: pwd);
      return null;
    }on FirebaseAuthException catch(e){  // if registration fails an exception message will receive
      return e.message;
    }
  }

  Future addUserDetails(String firstName, String lastName,String email,)async{
    await FirebaseFirestore.instance.collection('users').add({
      'first name':firstName,
      'last name':lastName,
      'email':email,
    });
  }

// Login
  Future<String?> signIn({required String email, required String pass}) async {
    try{
      await auth.signInWithEmailAndPassword(email: email, password: pass);
      return null;
    }on FirebaseAuthException catch(e){  // if login fails an exception message will receive
      return e.message;
    }
  }


  Future<void> signOut() async{
    await auth.signOut();
  }
}
