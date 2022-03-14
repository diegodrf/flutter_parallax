import 'package:flutter/material.dart';
import 'package:flutter_parallax/components/location_list.dart';

class ParallaxRecipe extends StatelessWidget {
  const ParallaxRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: size.height * 1.0,
          width: size.width * 1.0,
          child: const LocationList(),
        ),
      ),
    );
  }
}
