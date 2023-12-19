import 'package:astrology/commons/padding.dart';
import 'package:astrology/modules/astrological_dashboard/controller/astrological_dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HoroscopesView extends StatelessWidget {
  const HoroscopesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AstrologicalDashboardController>(
        init: AstrologicalDashboardController(),
        builder: (controller) {
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
                        .map((e) => Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.grey.shade200,
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Text(
                                  e == 0
                                      ? 'Add Member'
                                      : e == 1
                                          ? 'Me'
                                          : 'Cancer',
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                )
                              ],
                            )))
                        .toList(),
                  ),
                ),
              ),
              Row(
                children: [0, 1, 2, 3]
                    .map((e) => Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Love',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  padding10,
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 8,
                                          child: Container(
                                            color: e == 0
                                                ? Colors.blue
                                                : e == 1
                                                    ? Colors.green
                                                    : e == 2
                                                        ? Colors.red
                                                        : Colors.amber,
                                            height: 5,
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Container(
                                            color: Colors.grey,
                                            height: 5,
                                          ))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    '79%',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )))
                    .toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        height: 59,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: Icon(Icons.star, color: Colors.grey),
                        ),
                      ),
                      title: const Text(
                        'Essential',
                      ),
                      subtitle: const Text(
                        'Connections, Partnerships, Balancing needs and goals',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 6,
                          child: Container(
                            height: 500,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: ListView(
                              children: [
                                padding10,
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Your Horoscopes for Today',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey[200],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                      'Your single-minded focus is formidable today as mental Mercury in Capricorn aligns with visionary Jupiter in your impassioned fifth house. Record your ideas for safekeeping, but don’t publicize them just yet. Mercury is retrograde, increasing the odds that your nascent notions will be misunderstood and underappreciated. There will be other opportunities to put them out there, especially around January 19 when the third of three Mercury-Jupiter mashups helps to clarify your concepts. For now, find some time to devote to a pet project before lights out tonight.'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                      'Your single-minded focus is formidable today as mental Mercury in Capricorn aligns with visionary Jupiter in your impassioned fifth house. Record your ideas for safekeeping, but don’t publicize them just yet. Mercury is retrograde, increasing the odds that your nascent notions will be misunderstood and underappreciated. There will be other opportunities to put them out there, especially around January 19 when the third of three Mercury-Jupiter mashups helps to clarify your concepts. For now, find some time to devote to a pet project before lights out tonight.'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                      'Your single-minded focus is formidable, increasing the odds that your nascent notions will be misunderstood and underappreciated. There will be other opportunities to put them out there, especially around January 19 when the third of three Mercury-Jupiter mashups helps to clarify your concepts. For now, find some time to devote to a pet project before lights out tonight.'),
                                )
                              ],
                            ),
                          )),
                      padding20,
                      Expanded(
                          flex: 4,
                          child: Container(
                            height: 500,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: ListView(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Reading Services',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22),
                                  ),
                                ),
                                ListTile(
                                  leading: Container(
                                    height: 59,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Center(
                                      child: Icon(Icons.handshake,
                                          color: Colors.white),
                                    ),
                                  ),
                                  trailing: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  title: const Text('Palm reading'),
                                  subtitle: const Text(
                                    'Get Palm reading',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ListTile(
                                  leading: Container(
                                    height: 59,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Center(
                                      child: Icon(Icons.book_online_outlined,
                                          color: Colors.white),
                                    ),
                                  ),
                                  trailing: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  title: const Text('Compability reading'),
                                  subtitle: const Text(
                                    'Get Compability reading',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey[200],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Get detailed Personal Reading for the current astrology',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                                ListView.builder(
                                    itemCount: 3,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return const ListTile(
                                        trailing: Icon(
                                          Icons.message_outlined,
                                          color: Colors.grey,
                                        ),
                                        leading: CircleAvatar(
                                          radius: 40,
                                          backgroundImage: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3flIHsvZtK3eU7tEnp-LSEjNznTZCn0dkcA&usqp=CAU'),
                                        ),
                                        title: Text('Devone lame Alex'),
                                        subtitle:
                                            Text('alexcarry1645@gmail.com'),
                                      );
                                    }),
                              ],
                            ),
                          ))
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        height: 59,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: Icon(Icons.star, color: Colors.grey),
                        ),
                      ),
                      title: const Text(
                        'Nebula Tarot',
                      ),
                      subtitle: const Text(
                        'Find your card of the day',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
              )
            ],
          );
        });
  }
}
