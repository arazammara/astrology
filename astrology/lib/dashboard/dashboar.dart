import 'package:astrology/constants/assets_manager.dart';
import 'package:astrology/constants/my_colors.dart';
import 'package:astrology/dashboard/experts/experts.dart';
import 'package:astrology/dashboard/forecast/forecast.dart';
import 'package:astrology/dashboard/mainpage/mainpage.dart';
import 'package:astrology/dashboard/ourservices/overservices.dart';
import 'package:astrology/dashboard/readmore/readmore.dart';
import 'package:astrology/dashboard/widgets/header.dart';
import 'package:astrology/dashboard/zodiacsign/zodiacsign.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: MyColors.appColor,
            image: DecorationImage(
                image: AssetImage(AppAssets.backgrounf), fit: BoxFit.cover)),
        child: ListView(
          children: [
            DashboardHeader(),
            SizedBox(
                height: MediaQuery.of(context).size.height - 75,
                child: const MainPageDahboard()),
            const ReadMoreDashboard(),
            const ForecastDashboardPage(),
            const OverServicesDashboard(),
            const ExpertsDashboardPage(),
            const ZodiacSignDashboard()
          ],
        ),
      ),
    );
  }
}
