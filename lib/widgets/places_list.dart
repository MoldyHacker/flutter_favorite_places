import 'package:flutter/material.dart';

import 'package:favorite_places/models/place.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(
        child: Text('No places yet, start adding some!'),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, i) => ListTile(
        title: Text(
          places[i].title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
        onTap: () {},
      ),
    );
  }
}
