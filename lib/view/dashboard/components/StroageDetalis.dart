import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'Storage_item_Card.dart';
import 'chart.dart';

class StorageDetalis extends StatelessWidget {
  const StorageDetalis({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.all(kPadding),
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(kPadding)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Srorage Data',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold)),
            Container(
                margin: const EdgeInsets.symmetric(vertical: kPadding * 2),
                child: const Chart()),
                
            const StorageItemCard(
                title: 'Documnets Files',
                svg: 'assets/icons/Documents.svg',
                numofFiles: 1386,
                amountofData: 1.3),
            const StorageItemCard(
                title: 'Media Files',
                svg: 'assets/icons/media.svg',
                numofFiles: 500,
                amountofData: 2),
            const StorageItemCard(
                title: 'Other Files',
                svg: 'assets/icons/folder.svg',
                numofFiles: 300,
                amountofData: 0.7),
            const StorageItemCard(
                title: 'unknown Files',
                svg: 'assets/icons/unknown.svg',
                numofFiles: 5,
                amountofData: 1.3),
          ],
        ),
      ),
    );
  }
}
