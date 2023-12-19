import 'package:astrology/commons/padding.dart';
import 'package:astrology/constants/assets_manager.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPageDahboard extends StatelessWidget {
  const MainPageDahboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
              child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore The Horoscope',
                    style: TextStyle(
                        color: MyColors.appColor1, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Welcome to the '.toUpperCase(),
                    style: GoogleFonts.bebasNeue(
                        fontSize: 60,
                        letterSpacing: 1,
                        color: MyColors.appColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'World Of '.toUpperCase(),
                        style: GoogleFonts.bebasNeue(
                            fontSize: 60,
                            letterSpacing: 1,
                            color: MyColors.appColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            'Astrology',
                            style: GoogleFonts.aBeeZee(
                              letterSpacing: 1,
                              fontSize: 60,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 8
                                ..color = MyColors.appColor1,
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            'Astrology',
                            style: GoogleFonts.aBeeZee(
                                letterSpacing: 1,
                                fontSize: 60,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.black54, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [0, 1]
                        .map((e) => Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 30),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: MyColors.appColor1
                                            .withOpacity(0.20),
                                        border: Border.all(
                                            color: MyColors.appColor1)),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(left: 30, top: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Zodiac Sign',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: MyColors.appColor),
                                              ),
                                            ],
                                          ),
                                          padding5,
                                          Row(
                                            children: [
                                              Text(
                                                'Read More',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: MyColors.appColor1),
                                              ),
                                              padding20,
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: MyColors.appColor1,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: -20,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: MyColors.appColor1)),
                                        child: Center(
                                          child:
                                              Image.asset(AppAssets.signimage),
                                        ),
                                      ))
                                ],
                              ),
                            )))
                        .toList(),
                  ),
                  Row(
                    children: [0, 1]
                        .map((e) => Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 30),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: MyColors.appColor1
                                            .withOpacity(0.20),
                                        border: Border.all(
                                            color: MyColors.appColor1)),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(left: 30, top: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Zodiac Sign',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: MyColors.appColor),
                                              ),
                                            ],
                                          ),
                                          padding5,
                                          Row(
                                            children: [
                                              Text(
                                                'Read More',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: MyColors.appColor1),
                                              ),
                                              padding20,
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: MyColors.appColor1,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: -20,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: MyColors.appColor1)),
                                        child: Center(
                                          child:
                                              Image.asset(AppAssets.signimage),
                                        ),
                                      ))
                                ],
                              ),
                            )))
                        .toList(),
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: SizedBox(
            child: Image.asset(AppAssets.mainlogo),
          ))
        ],
      ),
    );
  }
}
