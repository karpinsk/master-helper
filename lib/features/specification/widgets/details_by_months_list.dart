import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/core/models/detail.dart';
import 'package:intl/intl.dart';
import 'package:master_helper/features/specification/specification_bloc.dart';
import 'package:master_helper/features/specification/widgets/detail_tile.dart';

class DetailsByMonthsList extends StatelessWidget {
  final List<Detail> details;
  final BuildContext context;

  const DetailsByMonthsList({
    Key? key,
    required this.details,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groupedDetails = _groupDetailsByMonth(details.where((d) => d.parentId == null).toList());
    final bloc = context.read<SpecificationBloc>();

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
                bloc.add(SpecificationEvent.detailSelected(detail.id!));
                bloc.add(const SpecificationEvent.searchQueryChanged(null));
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
