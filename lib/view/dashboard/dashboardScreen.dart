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
          children: [
            Header(),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(color: Colors.red,),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.blue,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
