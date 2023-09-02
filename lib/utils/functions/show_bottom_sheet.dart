import 'package:flutter/material.dart';
import 'package:snapchat_machine_tesr/domain/models/user_model.dart';

import '../../widgets/more_detail_widget.dart';
import '../constants/image_constants.dart';

class MyBottomSheet {
  static Future<dynamic> showFullScreenBottomSheet(
      BuildContext context, UserModel userModel) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
            initialChildSize: 0.5,
            maxChildSize: 0.9,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    controller: scrollController,
                    children: <Widget>[
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              AssetImage(imageList[userModel.index]),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Center(
                        child: Text(
                          userModel.userName,
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(56, 63, 81, 181),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(56, 63, 81, 181),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Location Details",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Lattitude: ${userModel.latlang.latitude} \n Longitude: ${userModel.latlang.longitude}",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const MoreDetailWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const MoreDetailWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const MoreDetailWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const MoreDetailWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const MoreDetailWidget(),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
