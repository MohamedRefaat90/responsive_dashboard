import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/Header.dart';

import 'components/StroageDetalis.dart';


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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('My Files', style: Theme.of(context),)
                        ],
                      )
                    ],
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
