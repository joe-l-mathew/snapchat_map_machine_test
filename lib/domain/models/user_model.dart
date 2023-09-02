import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserModel {
  final String userName;
  final LatLng latlang;
  final int index;
  UserModel({
    required this.userName,
    required this.latlang,
    required this.index,
  });
}
