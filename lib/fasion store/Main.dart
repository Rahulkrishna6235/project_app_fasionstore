import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_app/fasion%20store/providers/profavorite_provider.dart';
import 'package:provider/provider.dart';

import 'fasion screens/homegrid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: const MaterialApp(

      ),
    );
  }
}