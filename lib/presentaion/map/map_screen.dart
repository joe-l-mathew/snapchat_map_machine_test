import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapchat_machine_tesr/utils/functions/avathar_generator.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      "assets/av1.png",
      "assets/av2.png",
      "assets/av3.png",
      "assets/av4.png",
      "assets/av5.png",
      "assets/av6.png",
      "assets/av7.png",
      "assets/av8.png",
      "assets/av9.png",
    ];

    LatLng initialLocation = const LatLng(11.248737, 75.83374);
    return Scaffold(
      body: FutureBuilder(
        future: avatharGenerator(imageList),
        initialData: null,
        builder: (BuildContext context,
            AsyncSnapshot<List<BitmapDescriptor>?> snapshot) {
          if (snapshot.hasData) {
            return GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: initialLocation,
                  zoom: 14,
                ),
                markers: {
                  Marker(
                    markerId: const MarkerId("Person 1"),
                    position: const LatLng(11.269087, 75.831703),
                    icon: snapshot.data![0],
                    infoWindow: const InfoWindow(title: "Person 1"),
                  ),
                  Marker(
                      markerId: const MarkerId("Person 2"),
                      position: const LatLng(11.234882, 75.857424),
                      icon: snapshot.data![1],
                      infoWindow: const InfoWindow(title: "Person 2")),
                  Marker(
                      markerId: const MarkerId("Person 3"),
                      position: const LatLng(11.232456, 75.806438),
                      icon: snapshot.data![2],
                      infoWindow: const InfoWindow(title: "Person 3")),
                  Marker(
                      markerId: const MarkerId("Person 4"),
                      position: const LatLng(11.274609, 75.812019),
                      icon: snapshot.data![3],
                      infoWindow: const InfoWindow(title: "Person 4")),
                  Marker(
                      markerId: const MarkerId("Person 5"),
                      position: const LatLng(11.265625, 75.856222),
                      icon: snapshot.data![4],
                      infoWindow: const InfoWindow(title: "Person 5")),
                  Marker(
                      markerId: const MarkerId("Person 6"),
                      position: const LatLng(11.262501, 75.882405),
                      icon: snapshot.data![5],
                      infoWindow: const InfoWindow(title: "Person 6")),
                  Marker(
                      markerId: const MarkerId("Person 7"),
                      position: const LatLng(11.217890, 75.815642),
                      icon: snapshot.data![6],
                      infoWindow: const InfoWindow(title: "Person 7")),
                  Marker(
                      markerId: const MarkerId("Person 8"),
                      position: const LatLng(11.265980, 75.794043),
                      icon: snapshot.data![7],
                      infoWindow: const InfoWindow(title: "Person 8")),
                  Marker(
                      markerId: const MarkerId("Person 9"),
                      position: const LatLng(11.235548, 75.822363),
                      icon: snapshot.data![8],
                      infoWindow: const InfoWindow(title: "Person 9")),
                });
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
