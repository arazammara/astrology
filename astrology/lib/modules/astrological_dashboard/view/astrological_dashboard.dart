import 'package:astrology/modules/astrological_dashboard/controller/astrological_dashboard_controller.dart';
import 'package:astrology/modules/astrological_dashboard/widgets/drawer_astrological.dart';
import 'package:astrology/modules/astrological_dashboard/widgets/header_astrological_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AstrologicalDashboard extends StatefulWidget {
  const AstrologicalDashboard({super.key});

  @override
  State<AstrologicalDashboard> createState() => _AstrologicalDashboardState();
}

class _AstrologicalDashboardState extends State<AstrologicalDashboard> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AstrologicalDashboardController>(
        init: AstrologicalDashboardController(),
        builder: (controller) {
          return Scaffold(
              backgroundColor: const Color(0xffF9F8FD),
              body: Row(
                children: [
                  Container(
                      width: 250,
                      color: Colors.white,
                      child: const AstrologicalDrawer()),
                  Expanded(
                      child: Column(
                    children: [
                      const AstrologicalHeader(),
                      Expanded(
                          child: Container(
                        child: controller.dashboarditemsListScreens[
                            controller.seleteditem.value],
                      ))
                    ],
                  ))
                ],
              ));
        });
  }
}
