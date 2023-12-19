import 'package:astrology/modules/astrological_dashboard/screens/advisors/advisors_view.dart';
import 'package:astrology/modules/astrological_dashboard/screens/horoscopes/horoscopes_view.dart';
import 'package:astrology/modules/astrological_dashboard/screens/talk/talk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AstrologicalDashboardController extends GetxController {
  RxInt seleteditem = 0.obs;
  RxString seleteditemName = 'Dashboard'.obs;

  void increment(int index) {
    seleteditem.value = index;
    update();
  }

  void setitemname(int index) {
    seleteditemName.value = dashboarditemsList[index];
    update();
  }

  List<String> dashboarditemsList = [
    'Dashboard',
    'Advisors',
    'Compatablity',
    'Astrological Talk',
    'Guides'
  ];
  List<IconData> dashboarditemsListIcons = [
    Icons.dashboard_outlined,
    Icons.help_center_outlined,
    Icons.compare_outlined,
    Icons.chat_bubble_outline,
    Icons.help_center_outlined
  ];
  List<Widget> dashboarditemsListScreens = [
    const HoroscopesView(),
    const AdvisorsViewScreen(),
    Container(),
    const WebLayoutScreen(),
    Container()
  ];
}
