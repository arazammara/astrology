import 'package:astrology/commons/padding.dart';
import 'package:astrology/constants/assets_manager.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:astrology/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class ExpertsDashboardPage extends StatelessWidget {
  const ExpertsDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 2,
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
                'Top Card Reader Experts',
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
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Matched Advisers',
                      style: TextStyle(
                        fontSize: 22,
                        color: MyColors.appColor1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    TextButton(onPressed: () {}, child: const Text('View All'))
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Advisers that are the best matches be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum .',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          padding10,
          Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Container(child: builderwidget()),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best in Love Reading',
                      style: TextStyle(
                        fontSize: 22,
                        color: MyColors.appColor1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    TextButton(onPressed: () {}, child: const Text('View All'))
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Advisers that are the best matches be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum .',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          padding10,
          Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Container(child: builderwidget()),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Accurate Readers',
                      style: TextStyle(
                        fontSize: 22,
                        color: MyColors.appColor1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    TextButton(onPressed: () {}, child: const Text('View All'))
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Advisers that are the best matches be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum .',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          padding10,
          Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Container(child: builderwidget()),
          ))
        ],
      ),
    );
  }
}

builderwidget() {
  return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8, crossAxisCount: 5),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: MyColors.appColor1)),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo1B58uOoW7X6vUhnn_gXkxW8s_vFqyYLN_A&usqp=CAU',
                    height: 150,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    padding5,
                    const Text(
                      'Master Erling',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: MyColors.appColor1,
                          fontSize: 22),
                    ),
                    padding5,
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index.isEven ? Colors.green : Colors.red),
                    )
                  ],
                ),
                const Row(
                  children: [
                    padding5,
                    Text(
                      '19 Years Experience',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [0, 1, 2, 3]
                          .map((e) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ))
                          .toList(),
                    ),
                    const Text(' | 24')
                  ],
                ),
                padding10,
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    width: 170,
                    height: 30,
                    decoration: BoxDecoration(
                        color: MyColors.appColor1,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Chat | 29/ MIN',
                        style: getBoldStyle(color: MyColors.whiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
