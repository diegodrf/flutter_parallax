import 'package:flutter/material.dart';
import 'package:flutter_parallax/constants.dart';

class LocationName extends StatelessWidget {
  final String name;
  final String country;

  const LocationName({
    Key? key,
    required this.name,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20.0,
      bottom: 20.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: locationNameTextStyle),
          Text(country, style: locationCountryTextStyle),
        ],
      ),
    );
  }
}
