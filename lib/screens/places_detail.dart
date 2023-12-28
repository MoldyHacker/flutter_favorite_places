import 'package:flutter/material.dart';

import 'package:favorite_places/models/place.dart';

class PlacesDetailScreen extends StatelessWidget {
  const PlacesDetailScreen({
    super.key,
    required this.place,
  });

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Center(
        child: Text('Details for ${place.title}'),
      ),
    );
  }
}