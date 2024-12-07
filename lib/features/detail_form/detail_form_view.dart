import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/features/detail_form/detail_form_bloc.dart';
import 'package:master_helper/features/detail_form/widgets/detail_form_section.dart';
import 'package:master_helper/features/detail_form/widgets/detail_form_button.dart';
import 'package:master_helper/features/detail_form/widgets/detail_form_snackbar.dart';
import 'package:master_helper/generated/l10n.dart';
import 'package:master_helper/features/specification/specification_page.dart';

class DetailFormView extends StatelessWidget {
  final int? detailId;

  DetailFormView({Key? key, this.detailId}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final bloc = context.read<DetailFormBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(detailId == null ? localized.addDetail : localized.editDetail),
      ),
      body: SafeArea(
        child: BlocListener<DetailFormBloc, DetailFormState>(
          listenWhen: (previous, current) => previous.isSaved != current.isSaved,
          listener: (context, state) {
            if (state.isSaved) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SpecificationPage(
                    detailId: detailId,
                  ),
                ),
              );
            }
          },
          child: BlocBuilder<DetailFormBloc, DetailFormState>(
            buildWhen: (previous, current) {
              return previous.subDetails != current.subDetails;
            },
            builder: (context, state) {
              final mainDetail = state.mainDetail;
              final subDetails = state.subDetails;

              return Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              BlocBuilder<DetailFormBloc, DetailFormState>(buildWhen: (previous, current) {
                                return previous.mainDetail != current.mainDetail;
                              }, builder: (context, state) {
                                return DetailFormSection(
                                  detailDto: mainDetail,
                                  isMainDetail: mainDetail.parentId == null,
                                );
                              }),
                              ExpansionTile(
                                initiallyExpanded: true,
                                maintainState: true,
                                shape: const Border(),
                                title: BlocSelector<DetailFormBloc, DetailFormState, String?>(
                                  selector: (state) => state.mainDetailName,
                                  builder: (context, state) {
                                    return Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: localized.componentsOfDetail,
                                          ),
                                          TextSpan(
                                            text: state ?? '',
                                            style: const TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                children: [
                                  for (int i = 0; i < subDetails.length; i++)
                                    DetailFormSection(
                                      detailDto: subDetails[i],
                                      index: i,
                                      addDivider: i != subDetails.length - 1,
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: DetailFormButton(
                                        onPressed: () {
                                          bloc.add(const DetailFormEvent.addButtonTapped());
                                        },
                                        icon: const Icon(Icons.add),
                                        label: localized.addNewSubDetail,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: state.isSubmitting
                          ? null
                          : () {
                              if (_formKey.currentState?.validate() ?? false) {
                                bloc.add(const DetailFormEvent.submitButtonTapped());
                              } else {
                                showDetailFormSnackbar(context: context, message: localized.requiredFieldsEmpty);
                              }
                            },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(60),
                        padding: const EdgeInsets.all(0),
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        side: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1.5,
                        ),
                      ),
                      child: state.isSubmitting
                          ? const SizedBox(
                              height: 24.0,
                              width: 24.0,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.0,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              textAlign: TextAlign.center,
                              localized.save,
                              style: const TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
