import 'package:astrology/commons/padding.dart';
import 'package:astrology/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class DashboardLogo extends StatelessWidget {
  const DashboardLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          padding20,
          Text(
            'Astrology',
            style: getRegularStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          Text(
            '.COM',
            style: getRegularStyle(color: Colors.grey, fontSize: 30),
          )
        ],
      ),
    );
  }
}
