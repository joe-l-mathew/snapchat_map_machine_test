import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapchat_machine_tesr/domain/models/user_model.dart';
import 'package:snapchat_machine_tesr/utils/functions/check_permission.dart';

import '../../../utils/functions/show_bottom_sheet.dart';

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
  Position? _currentPosition;
  Future<void> _getCurrentPosition() async {
    final hasPermission = await handleLocationPermission(context);
    if (!hasPermission) return;
    liveLoaction();
  }

  void liveLoaction() {
    LocationSettings locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high, distanceFilter: 100);
    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position pos) {
      setState(() {
        _currentPosition = pos;
      });
    });
  }

  @override
  void initState() {
    _getCurrentPosition();
    super.initState();
  }

  List<LatLng> latlangList = [
    LatLng(11.269087, 75.831703),
    LatLng(11.234882, 75.857424),
    LatLng(11.232456, 75.806438),
    LatLng(11.274609, 75.812019),
    LatLng(11.265625, 75.856222),
    LatLng(11.262501, 75.882405),
    LatLng(11.217890, 75.815642),
    LatLng(11.265980, 75.794043),
    LatLng(11.235548, 75.822363),
  ];

  @override
  Widget build(BuildContext context) {
    Set<Marker> marker = {
      Marker(
        onTap: () {
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 1", latlang: latlangList[0], index: 0),
          );
        },
        markerId: const MarkerId("Person 1"),
        position: latlangList[0],
        icon: widget.snapshot.data![0],
        infoWindow: const InfoWindow(title: "Person 1"),
      ),
      Marker(
        onTap: () {
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 1", latlang: latlangList[1], index: 1),
          );
        },
        markerId: const MarkerId("Person 2"),
        position: latlangList[1],
        icon: widget.snapshot.data![1],
        infoWindow: const InfoWindow(title: "Person 2"),
      ),
      Marker(
        onTap: () {
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 2", latlang: latlangList[2], index: 2),
          );
        },
        markerId: const MarkerId("Person 3"),
        position: latlangList[2],
        icon: widget.snapshot.data![2],
        infoWindow: const InfoWindow(title: "Person 3"),
      ),
      Marker(
        onTap: () {
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 3", latlang: latlangList[3], index: 3),
          );
        },
        markerId: const MarkerId("Person 4"),
        position: latlangList[3],
        icon: widget.snapshot.data![3],
        infoWindow: const InfoWindow(title: "Person 4"),
      ),
      Marker(
        onTap: () {
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 4", latlang: latlangList[4], index: 4),
          );
        },
        markerId: const MarkerId("Person 5"),
        position: latlangList[4],
        icon: widget.snapshot.data![4],
        infoWindow: const InfoWindow(title: "Person 5"),
      ),
      Marker(
        onTap: () {
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 5", latlang: latlangList[5], index: 5),
          );
        },
        markerId: const MarkerId("Person 6"),
        position: latlangList[5],
        icon: widget.snapshot.data![5],
        infoWindow: const InfoWindow(title: "Person 6"),
      ),
      Marker(
        onTap: () {
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 6", latlang: latlangList[6], index: 6),
          );
        },
        markerId: const MarkerId("Person 7"),
        position: latlangList[6],
        icon: widget.snapshot.data![6],
        infoWindow: const InfoWindow(title: "Person 7"),
      ),
      Marker(
        onTap: () {
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 7", latlang: latlangList[7], index: 7),
          );
        },
        markerId: const MarkerId("Person 8"),
        position: latlangList[7],
        icon: widget.snapshot.data![7],
        infoWindow: const InfoWindow(title: "Person 8"),
      ),
      Marker(
        onTap: () {
          if (_currentPosition == null) {
            return;
          }
          MyBottomSheet.showFullScreenBottomSheet(
            context,
            UserModel(userName: "Person 8", latlang: latlangList[8], index: 8),
          );
        },
        markerId: const MarkerId("Person 9"),
        position: latlangList[8],
        icon: widget.snapshot.data![8],
        infoWindow: const InfoWindow(title: "Person 9"),
      ),
      _currentPosition == null
          ? const Marker(markerId: MarkerId("Null"))
          : Marker(
              markerId: const MarkerId("Live location"),
              infoWindow: const InfoWindow(title: "Live location (YOU)"),
              position: LatLng(
                  _currentPosition!.latitude, _currentPosition!.longitude),
            )
    };
    return GoogleMap(
        initialCameraPosition: CameraPosition(
          target: widget.initialLocation,
          zoom: 14,
        ),
        markers: marker);
  }
}
