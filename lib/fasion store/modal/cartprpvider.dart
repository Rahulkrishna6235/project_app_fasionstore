import 'package:flutter/cupertino.dart';

class WishlistModal with ChangeNotifier{
  final String id,productid;
  WishlistModal({
    required this.id,
    required this.productid,
  });
}