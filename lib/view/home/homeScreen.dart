import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../dashboard/dashboardScreen.dart';
import 'components/SideMenu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.smallerThan(name: TABLET),
            Condition.equals(name: TABLET),
          ],
          child: Drawer(child: sideMenu())),
      body: SafeArea(
          child: ResponsiveWrapper(
        breakpoints: const [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveVisibility(hiddenWhen: const [
              Condition.smallerThan(name: TABLET),
              Condition.equals(name: TABLET),
            ], child: Expanded(child: sideMenu())),
            const DashboardScreen()
          ],
        ),
      )),
    );
  }
}
