import 'package:flutter/material.dart';

import '../services/repository/fake_location_database.dart';
import 'location_list_item.dart';

class LocationList extends StatelessWidget {
  const LocationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}
