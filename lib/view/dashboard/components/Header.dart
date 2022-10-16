import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';

import 'ProfileCard.dart';
import 'SearchBox.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Dashboard',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontSize: ResponsiveValue(context,
                    defaultValue: 25.0,
                    valueWhen: const [Condition.equals(name: MOBILE, value: 20.0)]).value)),
        const Spacer(flex: 2),
        const SearchBox(),
        const ProfileCard()
      ],
    );
  }
}
