import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class StorageItemCard extends StatelessWidget {
  const StorageItemCard({
    Key? key,
    required this.title,
    required this.svg,
    required this.numofFiles,
    required this.amountofData,
  }) : super(key: key);
  final String title, svg;
  final int numofFiles;
  final double amountofData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kPadding / 2, horizontal: kPadding / 2),
      margin: const EdgeInsets.only(bottom: kPadding),
      decoration: BoxDecoration(
          border: Border.all(color: primaryColor.withOpacity(.2)),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            height: 30,
            padding: const EdgeInsets.only(right: kPadding / 2),
            child: SvgPicture.asset(svg, width: 15),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '$numofFiles files',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          )),
          Text('$amountofData GB')
        ],
      ),
    );
  }
}
