import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapchat_machine_tesr/presentaion/map/widget/google_map_widget.dart';
import 'package:snapchat_machine_tesr/utils/functions/avathar_generator.dart';

import '../../utils/constants/image_constants.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LatLng initialLocation = const LatLng(11.248737, 75.83374);
    return Scaffold(
      body: FutureBuilder(
        future: avatharGenerator(imageList),
        initialData: null,
        builder: (BuildContext context,
            AsyncSnapshot<List<BitmapDescriptor>?> snapshot) {
          if (snapshot.hasData) {
            return GoogleMapWidget(
              initialLocation: initialLocation,
              snapshot: snapshot,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
