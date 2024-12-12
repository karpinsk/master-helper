import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:master_helper/features/detail_form/detail_form_bloc.dart';
import 'package:master_helper/features/detail_form/widgets/detail_dto.dart';
import 'package:master_helper/features/detail_form/widgets/dashed_divider.dart';
import 'package:master_helper/features/detail_form/widgets/delete_confirmation_dialog.dart';
import 'package:master_helper/core/models/detail_field.dart';
import 'package:master_helper/features/detail_form/widgets/detail_form_button.dart';
import 'package:master_helper/features/detail_form/widgets/detail_section_utils.dart';
import 'package:master_helper/features/specification/specification_page.dart';
import 'package:master_helper/generated/l10n.dart';
import 'package:master_helper/features/home/home.dart';

class DetailFormSection extends StatelessWidget with DetailSectionUtilsMixin {
  final DetailDto detailDto;
  final bool isMainDetail;
  final int index;
  final bool addDivider;

  const DetailFormSection({
    Key? key,
    required this.detailDto,
    this.isMainDetail = false,
    this.index = 0,
    this.addDivider = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final bloc = context.read<DetailFormBloc>();
    final orderNumberController = TextEditingController(text: detailDto.orderNumber);
    final nameController = TextEditingController(text: detailDto.name);
    final infoController = TextEditingController(text: detailDto.info);
    final drawingExpirationDateController = TextEditingController(
        text: detailDto.drawingExpirationDate == null
            ? ''
            : DateFormat('yyyy-MM-dd').format(detailDto.drawingExpirationDate!));

    return BlocBuilder<DetailFormBloc, DetailFormState>(buildWhen: (previous, current) {
      return previous.mainDetail.drawingPath != current.mainDetail.drawingPath;
    }, builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isMainDetail)
              TextFormField(
                controller: orderNumberController,
                decoration: InputDecoration(
                  labelText: localized.orderNumber,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return localized.enterOrderNumber;
                  }
                  return null;
                },
                onChanged: (value) {
                  detailDto.orderNumber = value;
                },
              ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: isMainDetail ? localized.detailName : localized.subDetailSerialNumber(index + 1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return isMainDetail ? localized.enterDetailName : localized.enterSubDetailName;
                }
                return null;
              },
              onChanged: (value) {
                detailDto.name = value;
                if (isMainDetail) {
                  bloc.add(DetailFormEvent.mainDetailNameChanged(mainDetailName: value));
                }
              },
            ),
            TextFormField(
              controller: infoController,
              decoration: InputDecoration(
                labelText: isMainDetail ? localized.information : localized.subDetailInformation(index + 1),
              ),
              onChanged: (value) {
                detailDto.info = value;
              },
            ),
            const SizedBox(height: 16),
            BlocBuilder<DetailFormBloc, DetailFormState>(buildWhen: (previous, current) {
              final areSubDetailEqual = const DeepCollectionEquality().equals(
                previous.details,
                current.details,
              );
              final mainDetailChanged = previous.mainDetail != current.mainDetail;

              return !areSubDetailEqual || mainDetailChanged;
            }, builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: DetailFormButton(
                      onPressed: () => showImagePicker(context: context, detail: detailDto),
                      icon: Icon(
                        detailDto.drawingPath == null ? Icons.add_a_photo : Icons.published_with_changes,
                      ),
                      label: detailDto.drawingPath == null ? localized.addDrawing : localized.replaceDrawing,
                    ),
                  ),
                  Expanded(
                    child: DetailFormButton(
                      onPressed: () => showImagePicker(context: context, detail: detailDto, isDrawing: false),
                      icon: Icon(
                        detailDto.photoPath == null ? Icons.add_photo_alternate : Icons.published_with_changes,
                      ),
                      label: detailDto.photoPath == null ? localized.addPhoto : localized.replacePhoto,
                    ),
                  ),
                  if ((detailDto.id != null))
                    Expanded(
                      child: DetailFormButton(
                        onPressed: () async {
                          if (detailDto.subDetailIds.isNotEmpty) {
                            final shouldDelete = await DeleteConfirmationDialog.showDeleteConfirmationDialog(context);

                            if (shouldDelete) {
                              bloc.add(DetailFormEvent.deleteButtonTapped(detailId: detailDto.id!));
                              if (isMainDetail) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              }
                            }
                          } else {
                            bloc.add(DetailFormEvent.deleteButtonTapped(detailId: detailDto.id!));
                            if (detailDto.id == null || detailDto.id! > 0) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SpecificationPage(),
                                ),
                              );
                            }
                          }
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        label: localized.deleteDetail,
                        borderColor: Colors.red,
                        textColor: Colors.red,
                      ),
                    ),
                ],
              );
            }),
            if (detailDto.drawingPath != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  controller: drawingExpirationDateController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return localized.enterDrawingExpirationDate;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: localized.drawingExpirationDate,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).primaryColor),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).primaryColor),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? selectedDate = await selectDate(context);
                    if (selectedDate != null) {
                      detailDto.drawingExpirationDate = selectedDate;
                      bloc.add(DetailFormEvent.detailUpdated(
                          detailId: detailDto.id, field: DetailField.drawingExpirationDate, value: selectedDate));
                      drawingExpirationDateController.text = DateFormat('yyyy-MM-dd').format(selectedDate);
                    }
                  },
                ),
              ),
            if (addDivider) const DashedDivider(),
          ],
        ),
      );
    });
  }
}
