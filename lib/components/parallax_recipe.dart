import 'package:flutter/material.dart';
import 'package:flutter_parallax/components/location_list_item.dart';

import '../services/repository/fake_location_database.dart';

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
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: locations.length,
            itemBuilder: (context, index) {
              final _location = locations[index];
              return LocationListItem(
                imageUrl: _location.imageUrl,
                name: _location.name,
                country: _location.place,
              );
            },
          ),
        ),
      ),
    );
  }
}
