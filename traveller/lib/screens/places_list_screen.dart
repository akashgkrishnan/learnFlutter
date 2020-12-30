import 'package:flutter/material.dart';
import './add_place_screen.dart';
import 'package:provider/provider.dart';
import '../providers/great_places.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('places'),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(context, AddPlaceScreen.routeName);
                })
          ],
        ),
        body: FutureBuilder(
          future: Provider.of<GreatPlaces>(context, listen: false)
              .fetchAndSetPlaces(),
          builder: (ctx, snapshot) => snapshot.connectionState ==
                  ConnectionState.waiting
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Consumer<GreatPlaces>(
                  child: const Center(
                    child: Text('no places added yet'),
                  ),
                  builder: (context, greatPlaces, child) =>
                      greatPlaces.items.length == 0
                          ? child
                          : ListView.builder(
                              itemCount: greatPlaces.items.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: FileImage(
                                        greatPlaces.items[index].image),
                                  ),
                                  title: Text(greatPlaces.items[index].title),
                                  onTap: () {},
                                );
                              },
                            ),
                ),
        ));
  }
}
