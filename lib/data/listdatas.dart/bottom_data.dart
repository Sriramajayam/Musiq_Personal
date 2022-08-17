import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarModel {
  BottomNavBarModel({required this.iconData, required this.labelData});
  final IconData iconData;
  final String labelData;
}
List<BottomNavBarModel> bottomItems = [
  BottomNavBarModel(iconData: Icons.home, labelData: "Home"),
  BottomNavBarModel(iconData: Icons.music_note, labelData: "Library"),
  BottomNavBarModel(iconData: Icons.podcasts, labelData: "Podcast"),
  BottomNavBarModel(iconData: Icons.person, labelData: "Profile"),
];




