import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/place.dart';

class MapsScreen extends StatefulWidget {
  final PlaceLocation initialPosition;
  final bool isSelecting;
  MapsScreen(
      {this.initialPosition =
          const PlaceLocation(lattitude: 28.6106951, longitude: 77.4440021),
      this.isSelecting = false});
  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select from map'),
      ),
      body: new GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.initialPosition.lattitude,
              widget.initialPosition.longitude),
          zoom: 16,
        ),
      ),
    );
  }
}
