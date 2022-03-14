import 'package:flutter/material.dart';
import 'package:flutter_parallax/components/gradient_effect.dart';
import 'package:flutter_parallax/components/location_name.dart';
import 'package:flutter_parallax/components/parallax_image.dart';

class LocationListItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();

  LocationListItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16.0 / 9.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              ParallaxImage(imageKey: _backgroundImageKey, imageUrl: imageUrl),
              const GradientEffect(),
              LocationName(name: name, country: country)
            ],
          ),
        ),
      ),
    );
  }
}
