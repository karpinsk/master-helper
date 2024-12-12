import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:master_helper/core/models/detail.dart';
import 'package:intl/intl.dart';
import 'package:master_helper/features/specification/specification_page.dart';
import 'package:master_helper/core/presentation/detail_tile.dart';

class OrdersList extends StatelessWidget {
  final List<Detail> details;

  const OrdersList({
    Key? key,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groupedDetails = _groupDetailsByMonth(details.where((d) => d.parentId == null).toList());

    return Column(
      children: groupedDetails.entries.map((entry) {
        String month = DateFormat('LLLL yyyy', Localizations.localeOf(context).toString()).format(entry.key);
        return ExpansionTile(
          title: Text(month),
          shape: const Border(),
          initiallyExpanded: true,
          children: entry.value.map((detail) {
            return DetailTile(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SpecificationPage(
                      detailId: detail.id!,
                    ),
                  ),
                );
              },
              onSlide: () {},
              detail: detail,
            );
          }).toList(),
        );
      }).toList(),
    );
  }
}

Map<DateTime, List<Detail>> _groupDetailsByMonth(List<Detail> details) {
  final Map<DateTime, List<Detail>> groupedDetails = {};

  for (var detail in details) {
    final DateTime creationDate = detail.createdAt;
    final DateTime monthYearKey = DateTime(creationDate.year, creationDate.month);

    groupedDetails.putIfAbsent(monthYearKey, () => []).add(detail);
  }

  final sortedKeys = groupedDetails.keys.toList()..sort((a, b) => b.compareTo(a));
  return LinkedHashMap.fromEntries(
    sortedKeys.map((key) => MapEntry(key, groupedDetails[key]!)),
  );
}
