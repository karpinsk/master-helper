import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/core/models/detail.dart';
import 'package:master_helper/core/models/detail_status.dart';
import 'package:master_helper/features/specification/specification_bloc.dart';
import 'package:master_helper/core/presentation/detail_tile.dart';

class DetailsList extends StatelessWidget {
  final List<Detail> details;
  final int selectedDetailId;

  const DetailsList({
    Key? key,
    required this.details,
    required this.selectedDetailId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subDetails = details.where((detail) => detail.parentId == selectedDetailId).toList();

    return Column(
      children: subDetails.map((detail) {
        return _buildDetailTile(context, detail);
      }).toList(),
    );
  }

  Widget _buildDetailTile(BuildContext context, Detail detail) {
    final bloc = context.read<SpecificationBloc>();
    final tileHeader = DetailTile(
      onTap: () {
        bloc.add(SpecificationEvent.detailSelected(detail.id!));
      },
      onSlide: () {
        bloc.add(SpecificationEvent.detailStatusUpdated(
            detail.id!, detail.status == DetailStatus.inProgress ? DetailStatus.waiting : DetailStatus.inProgress));
      },
      detail: detail,
    );

    if (detail.parentId != null && detail.subDetailIds.isNotEmpty) {
      return ExpansionTile(
        title: tileHeader,
        tilePadding: const EdgeInsets.all(0),
        initiallyExpanded: true,
        childrenPadding: const EdgeInsets.only(left: 12),
        children: detail.subDetailIds.map((subDetailId) {
          final subDetail = bloc.state.details.firstWhere((d) => d.id == subDetailId);
          return _buildDetailTile(context, subDetail);
        }).toList(),
      );
    } else {
      return tileHeader;
    }
  }
}
