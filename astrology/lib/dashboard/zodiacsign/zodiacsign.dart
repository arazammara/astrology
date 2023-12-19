import 'package:astrology/commons/padding.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:astrology/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class ZodiacSignDashboard extends StatelessWidget {
  const ZodiacSignDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 150,
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
                  'Know your Zodiac Sign',
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
            Container(
              height: 200,
              color: Color(0xff07273C).withOpacity(0.50),
              child: Center(
                child: Row(
                  children: [0, 1, 2, 3]
                      .map((e) => e == 3
                          ? Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  padding40,
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Container(
                                      width: 170,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: MyColors.appColor1,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Center(
                                        child: Text(
                                          'FInd Zodiac',
                                          style: getBoldStyle(
                                              color: MyColors.whiteColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Date of Birth',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy',
                                      ),
                                    ),
                                    padding10,
                                    TextField(
                                      decoration: InputDecoration(
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          hintText: '22 May 2034',
                                          filled: true,
                                          fillColor: Color(0xff17384E)),
                                    )
                                  ],
                                ),
                              ),
                            ))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
