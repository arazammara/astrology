import 'package:astrology/commons/padding.dart';
import 'package:astrology/dashboard/widgets/logo.dart';
import 'package:astrology/modules/astrological_dashboard/controller/astrological_dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AstrologicalDrawer extends StatelessWidget {
  const AstrologicalDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AstrologicalDashboardController>(
        init: AstrologicalDashboardController(),
        builder: (controller) {
          return Column(
            children: [
              padding10,
              const DashboardLogo(),
              ListView.builder(
                  itemCount: controller.dashboarditemsList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    bool isselected = index == controller.seleteditem.value;
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: GestureDetector(
                        onTap: () {
                          controller.setitemname(index);
                          controller.increment(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  isselected ? BorderRadius.circular(12) : null,
                              color: isselected ? Colors.blue : null),
                          height: 50,
                          child: Center(
                            child: Row(
                              children: [
                                padding10,
                                Icon(
                                  controller.dashboarditemsListIcons[index],
                                  color: isselected
                                      ? Colors.white
                                      : const Color(0xffB9B7C2),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  controller.dashboarditemsList[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: isselected
                                        ? Colors.white
                                        : const Color(0xffB9B7C2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
              padding10,
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  color: Color(0xffB9B7C2),
                  thickness: 0.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: GestureDetector(
                  onTap: () {},
                  child: const SizedBox(
                    height: 50,
                    child: Center(
                      child: Row(
                        children: [
                          padding10,
                          Icon(Icons.logout_outlined, color: Colors.red),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Log Out',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3flIHsvZtK3eU7tEnp-LSEjNznTZCn0dkcA&usqp=CAU'),
                ),
                title: Text('Alex Carry User'),
                subtitle: Text('Love Astrological'),
              ),
              padding10
            ],
          );
        });
  }
}
