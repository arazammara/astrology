import 'package:astrology/commons/padding.dart';
import 'package:astrology/constants/assets_manager.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:astrology/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class ReadMoreDashboard extends StatelessWidget {
  const ReadMoreDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: const Color(0xff0F0221),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 100, right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'We Can Use Astrology To Find Your Future',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 34),
                  ),
                  padding10,
                  const Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  padding10,
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          leading: Icon(
                            Icons.sunny,
                            color: Colors.yellow,
                          ),
                          title: Text(
                            'Astrology is just a finger pointing at reality',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }),
                  padding10,
                  Row(
                    children: [
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
                              'Read More',
                              style: getBoldStyle(color: MyColors.whiteColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
          Expanded(
              child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width / 2) - 200,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                  height: MediaQuery.of(context).size.height - 100,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100)),
                    child: Image.asset(
                      AppAssets.about,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
