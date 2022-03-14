import 'package:flutter/material.dart';
import 'package:flutter_parallax/components/location_list_item.dart';

import '../constants.dart';

class ParallaxRecipe extends StatelessWidget {
  const ParallaxRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations)
            LocationListItem(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.place,
            )
        ],
      ),
    );
  }
}
