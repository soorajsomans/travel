import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/add_place_screen.dart';
import './screens/places_list_screen.dart';
import './providers/great_places.dart';

void main() => runApp(Travel());

class Travel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {AddPlaceScreen.routeName: (ctx) => AddPlaceScreen()},
      ),
    );
  }
}
