import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(kRadius)),
          filled: true,
          fillColor: secondaryColor,
          hintText: 'Search',
          suffixIcon:
              ResponsiveValue(context, defaultValue: Container(), valueWhen: [
            const Condition.equals(
              name: MOBILE,
              value: Icon(Icons.search),
            ),
            Condition.largerThan(
              name: MOBILE,
              value: Container(
                padding: const EdgeInsets.all(kPadding / 2),
                margin: const EdgeInsets.symmetric(horizontal: kPadding / 2),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(kRadius)),
                child: const Icon(Icons.search),
              ),
            ),
          ]).value,
        ),
      ),
    );
  }
}
// ResponsiveVisibility(
//             hiddenWhen: const [Condition.equals(name: MOBILE)],
//             child: Container(
//               padding: const EdgeInsets.all(kPadding / 2),
//               margin: const EdgeInsets.symmetric(horizontal: kPadding / 2),
//               decoration: BoxDecoration(
//                   color: primaryColor,
//                   borderRadius: BorderRadius.circular(kRadius)),
//               child: const Icon(Icons.search),
//             ),
//           )