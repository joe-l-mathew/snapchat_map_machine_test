import 'package:flutter/material.dart';
import 'package:snapchat_machine_tesr/presentaion/camera/camera_screen.dart';
import 'package:snapchat_machine_tesr/presentaion/chat/chat_screen.dart';
import 'package:snapchat_machine_tesr/presentaion/friends/friends_screen.dart';
import 'package:snapchat_machine_tesr/presentaion/map/map_screen.dart';
import 'package:snapchat_machine_tesr/presentaion/shots/shots_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.location_on_outlined), label: "Map"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.chat_bubble_outline_rounded), label: "Chat"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.camera_alt_outlined), label: "Camera"),
    const BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.play_arrow_outlined), label: "Shots")
  ];
  List<Widget> pagesList = [
    const MapScreen(),
    const ChatScreen(),
    const CameraScreen(),
    const FriendsScreen(),
    const ShotsScreen()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green[300],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: bottomNavItems,
        currentIndex: index,
        onTap: (ind) {
          setState(() {
            index = ind;
          });
        },
      ),
      body: pagesList[index],
    );
  }
}
