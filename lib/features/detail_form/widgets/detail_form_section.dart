import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:master_helper/features/detail_form/detail_form_bloc.dart';
import 'package:master_helper/features/detail_form/widgets/detail_dto.dart';
import 'package:master_helper/features/detail_form/widgets/dashed_divider.dart';
import 'package:master_helper/features/detail_form/widgets/detail_action_buttons.dart';
import 'package:master_helper/features/detail_form/widgets/delete_confirmation_dialog.dart';
import 'package:master_helper/core/models/detail_field.dart';
import 'package:master_helper/generated/l10n.dart';
import 'package:master_helper/features/home/home.dart';
import 'package:toastification/toastification.dart';

class DetailFormSection extends StatelessWidget {
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
                previous.subDetails,
                current.subDetails,
              );
              final mainDetailChanged = previous.mainDetail != current.mainDetail;

              return !areSubDetailEqual || mainDetailChanged;
            }, builder: (context, state) {
              return DetailActionButtons(
                detailDto: detailDto,
                onDrawingPicked: () => showImagePicker(context: context, detail: detailDto),
                onPhotoPicked: () => showImagePicker(context: context, detail: detailDto, isDrawing: false),
                onDelete: () async {
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
                  }
                },
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
                    DateTime? selectedDate = await _selectDate(context);
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

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime today = DateTime.now();
    final DateTime yesterday = today.subtract(const Duration(days: 1));

    return await showDatePicker(
      context: context,
      initialDate: yesterday,
      firstDate: yesterday,
      lastDate: DateTime(today.year + 5),
    );
  }

  void showImagePicker({required BuildContext context, required DetailDto detail, bool isDrawing = true}) async {
    final localized = S.of(context);
    final newPath = await _showImageSourceActionSheet(
      context: context,
      detail: detail,
      isDrawing: isDrawing,
    );

    if (newPath != null) {
      context.read<DetailFormBloc>().add(DetailFormEvent.detailUpdated(
          detailId: detail.id, field: isDrawing ? DetailField.drawingPath : DetailField.photoPath, value: newPath));
      Toastification().show(
        context: context,
        icon: const Icon(Icons.check_circle_rounded),
        alignment: Alignment.topRight,
        title: Text(
          isDrawing ? localized.drawingAdded : localized.photoAdded,
          style: const TextStyle(color: Colors.black),
        ),
        autoCloseDuration: const Duration(seconds: 3),
        backgroundColor: Colors.white,
      );
    }
  }

  Future<String?> _showImageSourceActionSheet({
    required BuildContext context,
    required DetailDto detail,
    bool isDrawing = true,
  }) async {
    return await showModalBottomSheet<String>(
      context: context,
      builder: (BuildContext context) {
        final localized = S.of(context);

        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: Text(localized.gallery),
                onTap: () async {
                  final path = await _handleImageSelection(
                    context: context,
                    source: ImageSource.gallery,
                    detail: detail,
                    isDrawing: isDrawing,
                  );
                  Navigator.pop(context, path);
                },
              ),
              if (Platform.isAndroid || Platform.isIOS)
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: Text(localized.camera),
                  onTap: () async {
                    final path = await _handleImageSelection(
                      context: context,
                      source: ImageSource.camera,
                      detail: detail,
                      isDrawing: isDrawing,
                    );
                    Navigator.pop(context, path);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

Future<String?> _handleImageSelection({
  required BuildContext context,
  required ImageSource source,
  required DetailDto detail,
  required bool isDrawing,
}) async {
  final pickedFile = await ImagePicker().pickImage(source: source);
  if (pickedFile != null) {
    final newPath = pickedFile.path;
    if (isDrawing) {
      detail.drawingPath = newPath;
    } else {
      detail.photoPath = newPath;
    }
    return newPath;
  }
  return null;
}
