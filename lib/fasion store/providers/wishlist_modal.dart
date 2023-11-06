import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_app/fasion%20store/modal/cartprpvider.dart';

class WishlistProvider with ChangeNotifier{
  Map<String ,WishlistModal> _wishlistitems={};
  Map<String, WishlistModal> get  getWishlistItems{
    return _wishlistitems;
  }
  final userCollection=FirebaseFirestore.instance.collection('users');
  Future<void> fetchWishlist()async{
    final User? user=FirebaseAuth.instance.currentUser;
    final DocumentSnapshot userDoc=await userCollection.doc(user!.uid).get();
    if(userDoc==null){
      return;
    }
    final leng=userDoc.get("userwish").length;
    for(int i=0;i<leng;i++){
      _wishlistitems.putIfAbsent(userDoc.get("userwish")[i]['productId']
      , () => WishlistModal(id: userDoc.get("userwish")[i]['wishlistId'],
              productid: userDoc.get("userwish")[i]['productId'],));
    }
    notifyListeners();
  }
  Future<void>removeOneItem({
    required String wishlistId,
    required String productId,
})async{
    final User? user=FirebaseAuth.instance.currentUser;
    await userCollection.doc(user!.uid).update({
      'userWish':FieldValue.arrayRemove([
        {
          'wishlistId':wishlistId,
          'productId':productId,
        }
      ])
    });
    _wishlistitems.remove(productId);
    await fetchWishlist();
    notifyListeners();
  }
  Future<void>clearOnlineWishlist()async{
    final User? user=FirebaseAuth.instance.currentUser;
  await userCollection.doc(user!.uid).update({
    'userWish':[],
  });
  _wishlistitems.clear();
  notifyListeners();
  }
}