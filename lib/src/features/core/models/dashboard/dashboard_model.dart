import 'package:flutter/widgets.dart';

class DashboardBannersModel{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardBannersModel(
    this.title,
    this.heading,
    this.subHeading,
    this.onPress
  );

  static List<DashboardBannersModel> list = [
    DashboardBannersModel("JS", "Java Script", "10 Lessons", null),
    DashboardBannersModel("F", "Flutter", "11 Lessons", null),
    DashboardBannersModel("H", "HTML", "8 Lessons", null),
    DashboardBannersModel("K", "Kotlin", "20 Lessons", null),
    DashboardBannersModel("P", "Phyton", "100 Lessons", null),

  ];

}