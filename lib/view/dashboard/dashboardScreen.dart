import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/Header.dart';
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          children: const [Header()],
        ),
      ),
    );
  }
}
