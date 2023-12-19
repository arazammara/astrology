import 'package:astrology/commons/padding.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:flutter/material.dart';

class OverServicesDashboard extends StatelessWidget {
  const OverServicesDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: const Color(0xff0F0221),
      child: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: ListView(
          children: [
            padding30,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Our Services',
                  style: TextStyle(
                    fontSize: 32,
                    color: MyColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ],
            ),
            const Text(
              'Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut labore \netesde dolore magna aliquapspendisse and the gravida.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            padding40,
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: SizedBox(
                  child: Column(
                    children: [0, 1, 2]
                        .map((e) => Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: 130,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white)),
                                child: const Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Astrology Tips',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 27),
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sitamet,\nconsectetur',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                                    Center(
                                      child: Icon(
                                        Icons.book,
                                        size: 70,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/service.png',
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/servicee.png',
                          ),
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: SizedBox(
                  child: Column(
                    children: [0, 1, 2]
                        .map((e) => Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: 130,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white)),
                                child: const Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Astrology Tips',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 27),
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sitamet,\nconsectetur',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                                    Center(
                                      child: Icon(
                                        Icons.book,
                                        size: 70,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                )),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
