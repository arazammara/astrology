import 'package:astrology/commons/padding.dart';
import 'package:astrology/modules/astrological_dashboard/controller/astrological_dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AstrologicalHeader extends StatelessWidget {
  const AstrologicalHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AstrologicalDashboardController>(
        init: AstrologicalDashboardController(),
        builder: (controller) {
          return Container(
            height: 60,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.seleteditemName.value,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      padding30,
                      Icon(
                        Icons.mood,
                        color: Colors.grey,
                      ),
                      padding30,
                      Icon(
                        Icons.notifications_off_outlined,
                        color: Colors.grey,
                      ),
                      padding30,
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3flIHsvZtK3eU7tEnp-LSEjNznTZCn0dkcA&usqp=CAU'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
