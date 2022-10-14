import 'package:flutter/material.dart';

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
        Text('Dashboard', style: Theme.of(context).textTheme.headline5!),
        const Spacer(),
        const SearchBox(),
        const ProfileCard()
      ],
    );
  }
}
