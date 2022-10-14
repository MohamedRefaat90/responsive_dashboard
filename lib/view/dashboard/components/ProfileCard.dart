import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(kRadius),
      ),
      padding: const EdgeInsets.all(kPadding / 2),
      margin: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Row(
        children: [
          Image.asset('assets/images/profile_pic.png'),
          Text(
            'Angila Joe',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          InkWell(onTap: () {}, child: const Icon(Icons.keyboard_arrow_down)),
        ],
      ),
    );
  }
}
