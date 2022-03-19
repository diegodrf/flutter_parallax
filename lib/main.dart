import 'package:flutter/material.dart';
import 'package:flutter_parallax/components/parallax_recipe.dart';
import 'package:flutter_parallax/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: const ParallaxRecipe(),
    );
  }
}
