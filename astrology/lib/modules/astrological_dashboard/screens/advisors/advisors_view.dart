import 'package:astrology/commons/padding.dart';
import 'package:astrology/modules/astrological_dashboard/controller/astrological_dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvisorsViewScreen extends StatelessWidget {
  const AdvisorsViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AstrologicalDashboardController>(
        init: AstrologicalDashboardController(),
        builder: (controller) {
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Row(
                      children: ['All', "Recent", 'My Team']
                          .map((e) => Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(12),
                                      color: e == 'All' ? Colors.blue : null),
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                          color: e == 'All'
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: ListTile(
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                      leading: Container(
                        height: 59,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: Icon(Icons.search_outlined),
                        ),
                      ),
                      title: const Text(
                        'Ready to find Perfect Advisor',
                      ),
                      subtitle: const Text(
                        'Lets Match you up!',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    gridDelegate:
                        (const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4)),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: ListView(
                            children: [
                              padding16,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(12),
                                            topRight: Radius.circular(12)),
                                        color: Color(0xffFDF5F0)),
                                    height: 30,
                                    width: 80,
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.5',
                                          style:
                                              TextStyle(color: Colors.orange),
                                        ),
                                        padding10,
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.more_vert,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3flIHsvZtK3eU7tEnp-LSEjNznTZCn0dkcA&usqp=CAU'),
                                  ),
                                ],
                              ),
                              padding10,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Devone Lane',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  padding10,
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index.isEven
                                            ? Colors.green
                                            : Colors.red),
                                  )
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'DevoneLane@gmail.com',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              padding10,
                              Row(
                                children: [
                                  padding10,
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.message,
                                              color: Colors.grey,
                                              size: 15,
                                            ),
                                            Text(
                                              'Message',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        )),
                                  ),
                                  padding10,
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.phone,
                                              color: Colors.grey,
                                              size: 15,
                                            ),
                                            Text(
                                              'Call',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        )),
                                  ),
                                  padding10
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          );
        });
  }
}
