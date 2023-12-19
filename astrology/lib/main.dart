import 'package:astrology/dashboard/dashboar.dart';
import 'package:astrology/routes/route_manager.dart';
import 'package:astrology/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(
              // ignore: deprecated_member_use
              textScaleFactor: 1),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'astrology',
      theme: lightThemeData(context),
      themeMode: ThemeMode.light,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: AppRoutes.astrologicalDashboard,
    );
  }
}
