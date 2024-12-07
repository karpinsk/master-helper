import 'package:flutter/material.dart';
import 'package:master_helper/features/detail_form/widgets/detail_dto.dart';
import 'package:master_helper/features/detail_form/widgets/detail_form_button.dart';
import 'package:master_helper/generated/l10n.dart';

class DetailActionButtons extends StatelessWidget {
  final DetailDto detailDto;
  final VoidCallback onDrawingPicked;
  final VoidCallback onPhotoPicked;
  final Future<void> Function() onDelete;

  const DetailActionButtons({
    super.key,
    required this.detailDto,
    required this.onDrawingPicked,
    required this.onPhotoPicked,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: DetailFormButton(
            onPressed: () => onDrawingPicked(),
            icon: Icon(
              detailDto.drawingPath == null ? Icons.add_a_photo : Icons.published_with_changes,
            ),
            label: detailDto.drawingPath == null ? localized.addDrawing : localized.replaceDrawing,
          ),
        ),
        Expanded(
          child: DetailFormButton(
            onPressed: () => onPhotoPicked(),
            icon: Icon(
              detailDto.photoPath == null ? Icons.add_photo_alternate : Icons.published_with_changes,
            ),
            label: detailDto.photoPath == null ? localized.addPhoto : localized.replacePhoto,
          ),
        ),
        if ((detailDto.id != null))
          Expanded(
            child: DetailFormButton(
              onPressed: () => onDelete(),
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
  }
}


  // We show this button if:
  // 1. Detail was already added to the database OR
  // 2. For subdetails
  // detailDto.subDetailIds.isNotEmpty || detailDto.parentId != null || (detailDto.id?.isNegative ?? false)

