import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/features/detail_form/detail_form_bloc.dart';
import 'package:master_helper/features/detail_form/detail_form_view.dart';

class DetailFormPage extends StatelessWidget {
  final int? detailId;

  const DetailFormPage({Key? key, this.detailId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailFormBloc()..add(DetailFormEvent.viewLoaded(detailId: detailId)),
      child: DetailFormView(detailId: detailId),
    );
  }
}
