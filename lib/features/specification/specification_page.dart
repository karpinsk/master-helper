import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/features/specification/specification_view.dart';
import 'package:master_helper/features/specification/specification_bloc.dart';

class SpecificationPage extends StatelessWidget {
  final int? detailId;
  const SpecificationPage({Key? key, this.detailId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SpecificationBloc()
        ..add(
          detailId == null ? const SpecificationEvent.detailsLoaded() : SpecificationEvent.detailSelected(detailId!),
        ),
      child: const SpecificationView(),
    );
  }
}
