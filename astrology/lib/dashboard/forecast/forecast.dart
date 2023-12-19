import 'package:astrology/commons/padding.dart';
import 'package:astrology/constants/assets_manager.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:astrology/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class ForecastDashboardPage extends StatelessWidget {
  const ForecastDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height + 300,
      decoration: const BoxDecoration(
          color: MyColors.appColor,
          image: DecorationImage(
              image: AssetImage(AppAssets.backgrounf), fit: BoxFit.cover)),
      child: ListView(
        children: [
          padding30,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Horoscope Forecasts',
                style: TextStyle(
                  fontSize: 32,
                  color: MyColors.appColor1,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ],
          ),
          const Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page \nwhen looking at its layout. The point of using Lorem Ipsum .',
            textAlign: TextAlign.center,
          ),
          padding20,
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Container(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.2, crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: MyColors.appColor1)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.do_not_disturb_on_total_silence_sharp,
                              size: 50,
                            ),
                            const Text(
                              'Gemini',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.appColor1,
                                  fontSize: 30),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Container(
                                width: 170,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: MyColors.appColor1,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    'Mar 21 - Apr 23',
                                    style: getBoldStyle(
                                        color: MyColors.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ))
        ],
      ),
    );
  }
}
