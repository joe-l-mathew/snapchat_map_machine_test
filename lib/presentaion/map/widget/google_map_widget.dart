import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({
    super.key,
    required this.initialLocation,
    required this.snapshot,
  });

  final LatLng initialLocation;
  final AsyncSnapshot<List<BitmapDescriptor>?> snapshot;

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  @override
  Widget build(BuildContext context) {
    Set<Marker> marker = {
      Marker(
        markerId: const MarkerId("Person 1"),
        position: const LatLng(11.269087, 75.831703),
        icon: widget.snapshot.data![0],
        infoWindow: const InfoWindow(title: "Person 1"),
      ),
      Marker(
        markerId: const MarkerId("Person 2"),
        position: const LatLng(11.234882, 75.857424),
        icon: widget.snapshot.data![1],
        infoWindow: const InfoWindow(title: "Person 2"),
      ),
      Marker(
        markerId: const MarkerId("Person 3"),
        position: const LatLng(11.232456, 75.806438),
        icon: widget.snapshot.data![2],
        infoWindow: const InfoWindow(title: "Person 3"),
      ),
      Marker(
        markerId: const MarkerId("Person 4"),
        position: const LatLng(11.274609, 75.812019),
        icon: widget.snapshot.data![3],
        infoWindow: const InfoWindow(title: "Person 4"),
      ),
      Marker(
        markerId: const MarkerId("Person 5"),
        position: const LatLng(11.265625, 75.856222),
        icon: widget.snapshot.data![4],
        infoWindow: const InfoWindow(title: "Person 5"),
      ),
      Marker(
        markerId: const MarkerId("Person 6"),
        position: const LatLng(11.262501, 75.882405),
        icon: widget.snapshot.data![5],
        infoWindow: const InfoWindow(title: "Person 6"),
      ),
      Marker(
        markerId: const MarkerId("Person 7"),
        position: const LatLng(11.217890, 75.815642),
        icon: widget.snapshot.data![6],
        infoWindow: const InfoWindow(title: "Person 7"),
      ),
      Marker(
        markerId: const MarkerId("Person 8"),
        position: const LatLng(11.265980, 75.794043),
        icon: widget.snapshot.data![7],
        infoWindow: const InfoWindow(title: "Person 8"),
      ),
      Marker(
        markerId: const MarkerId("Person 9"),
        position: const LatLng(11.235548, 75.822363),
        icon: widget.snapshot.data![8],
        infoWindow: const InfoWindow(title: "Person 9"),
      ),
    };
    return GoogleMap(
        initialCameraPosition: CameraPosition(
          target: widget.initialLocation,
          zoom: 14,
        ),
        markers: marker);
  }
}
