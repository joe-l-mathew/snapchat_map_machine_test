import 'package:flutter/material.dart';

class MoreDetailWidget extends StatelessWidget {
  const MoreDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                           width: double.infinity,
                           decoration: BoxDecoration(
                               color: const Color.fromARGB(56, 63, 81, 181),
                               borderRadius: BorderRadius.circular(10)),
                           child: const Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   "More details",
                                   style: TextStyle(
                                       fontSize: 20.0,
                                       fontWeight: FontWeight.bold),
                                 ),
                                 SizedBox(
                                   height: 2,
                                 ),
                                 Text(
                                   "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                                   maxLines: 10,
                                   overflow: TextOverflow.ellipsis,
                                   style: TextStyle(
                                       fontSize: 18.0,
                                       fontWeight: FontWeight.w500),
                                 ),
                               ],
                             ),
                           ),
                         );
  }
}
