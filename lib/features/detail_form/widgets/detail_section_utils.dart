import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:master_helper/core/models/detail_field.dart';
import 'package:master_helper/features/detail_form/detail_form_bloc.dart';
import 'package:master_helper/features/detail_form/widgets/detail_dto.dart';
import 'package:master_helper/features/detail_form/widgets/detail_form_snackbar.dart';
import 'package:master_helper/generated/l10n.dart';

mixin DetailSectionUtilsMixin {
  Future<DateTime?> selectDate(BuildContext context) async {
    final DateTime today = DateTime.now();
    final DateTime yesterday = today.subtract(const Duration(days: 1));

    return await showDatePicker(
      context: context,
      initialDate: yesterday,
      firstDate: yesterday,
      lastDate: DateTime(today.year + 5),
    );
  }

  void showImagePicker({
    required BuildContext context,
    required DetailDto detail,
    bool isDrawing = true,
  }) async {
    final localized = S.of(context);
    final newPath = await showModalBottomSheet<String>(
      context: context,
      builder: (BuildContext context) {
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

    if (newPath != null) {
      context.read<DetailFormBloc>().add(DetailFormEvent.detailUpdated(
          detailId: detail.id, field: isDrawing ? DetailField.drawingPath : DetailField.photoPath, value: newPath));
      showDetailFormSnackbar(context: context, message: isDrawing ? localized.drawingAdded : localized.photoAdded);
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
}
