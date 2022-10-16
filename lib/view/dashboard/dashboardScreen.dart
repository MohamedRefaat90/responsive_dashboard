import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/Header.dart';
import 'components/Storage_item_Card.dart';
import 'components/StroageDetalis.dart';
import 'components/chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: kPadding),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 500,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: kPadding),
                const StorageDetalis(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
