import 'package:astrology/commons/padding.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:astrology/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class LoginWidgetDashboard extends StatelessWidget {
  const LoginWidgetDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Sign in',
          style: TextStyle(
              color: MyColors.appColor1,
              fontSize: 14,
              fontWeight: FontWeight.bold),
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
                'Join Astrology +',
                style: getBoldStyle(color: MyColors.whiteColor),
              ),
            ),
          ),
        ),
        padding20
      ],
    );
  }
}
