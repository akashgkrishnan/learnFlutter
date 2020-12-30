import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';
import 'screens/places_list_screen.dart';
import './screens/add_place_screen.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.teal,
          accentColor: Colors.orange,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName : (context) => AddPlaceScreen(),
        },
      ),
    );
  }
}
