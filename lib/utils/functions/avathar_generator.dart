import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:typed_data';
import 'package:image/image.dart' as img; // Import the image package

Future<List<BitmapDescriptor>> avatharGenerator(List<String> imageList) async {
  List<BitmapDescriptor> bitList = [];
  for (String item in imageList) {
    final ByteData customIconByteData = await rootBundle.load(item);
    final Uint8List customIconUint8List =
        customIconByteData.buffer.asUint8List();
    img.Image? originalImage = img.decodeImage(customIconUint8List);
    img.Image resizedImage =
        img.copyResize(originalImage!, width: 130, height: 150);
    Uint8List resizedUint8List =
        Uint8List.fromList(img.encodePng(resizedImage));
    bitList.add(BitmapDescriptor.fromBytes(resizedUint8List));
  }
  return bitList;
}
