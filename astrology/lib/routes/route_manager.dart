import 'package:astrology/dashboard/dashboar.dart';
import 'package:astrology/modules/astrological_dashboard/view/astrological_dashboard.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';

class AppRoutes {
  static const String dashboardScreen = '/DashboardScreen';
  static const String astrologicalDashboard = '/AstrologicalDashboard';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case dashboardScreen:
        return _buildRoute(const DashboardScreen());
      case astrologicalDashboard:
        return _buildRoute(const AstrologicalDashboard());
      default:
        return unDefinedRoute();
    }
  }

  static unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              backgroundColor: Colors.white,
            ));
    // ignore: dead_code
    return MaterialPageRoute(builder: (_) => Container());
  }

  static _buildRoute(Widget widget, {int? duration = 400}) {
    return forwardRoute(widget, duration);
  }

  static _buildNormalRoute(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}
