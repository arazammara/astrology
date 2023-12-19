import 'package:astrology/commons/padding.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:astrology/dashboard/widgets/loginwidget.dart';
import 'package:astrology/dashboard/widgets/logo.dart';
import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DashboardLogo(),
          padding80,
          padding64,
          Expanded(
              child: Row(
            children: dashboardscreentitles
                .map((e) => Expanded(
                      child: Center(
                        child: Text(
                          e.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColors.appColor1),
                        ),
                      ),
                    ))
                .toList(),
          )),
          padding30,
          padding30,
          const LoginWidgetDashboard()
        ],
      ),
    );
  }

  final List<String> dashboardscreentitles = [
    'Horoscopes',
    'Learn',
    'CompaTibility',
    'Tarot',
    'Shop',
    'Physics'
  ];
}
