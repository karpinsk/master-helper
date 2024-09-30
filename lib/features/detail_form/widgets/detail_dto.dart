import 'dart:convert';

import 'package:master_helper/core/models/detail_field.dart';
import 'package:master_helper/core/models/detail.dart';

class DetailDto {
  int? id;
  int? parentId;
  String? orderNumber;
  String? name;
  String? info;
  DateTime? drawingExpirationDate;
  String? drawingPath;
  String? photoPath;
  List<int> subDetailIds;
  DateTime? createdAt;
  DateTime? modifiedAt;

  DetailDto({
    this.id,
    this.parentId,
    this.orderNumber,
    this.name,
    this.info,
    this.drawingExpirationDate,
    this.drawingPath,
    this.photoPath,
    this.subDetailIds = const [],
    this.createdAt,
    this.modifiedAt,
  });

  Map<DetailField, dynamic> toMap() {
    return {
      DetailField.id: id,
      DetailField.info: info,
      DetailField.orderNumber: orderNumber,
      DetailField.name: name,
      DetailField.createdAt: createdAt!.toIso8601String(),
      DetailField.modifiedAt: modifiedAt!.toIso8601String(),
      DetailField.parentId: parentId,
      DetailField.drawingPath: drawingPath,
      DetailField.drawingExpirationDate: drawingExpirationDate?.toIso8601String(),
      DetailField.photoPath: photoPath,
      DetailField.subDetailIds: jsonEncode(subDetailIds),
    };
  }

  Map<String, dynamic> toDatabaseMap() {
    return {
      DetailField.id.name: id,
      DetailField.info.name: info,
      DetailField.orderNumber.name: orderNumber,
      DetailField.name.name: name,
      DetailField.createdAt.name: createdAt!.toIso8601String(),
      DetailField.modifiedAt.name: modifiedAt!.toIso8601String(),
      DetailField.parentId.name: parentId,
      DetailField.drawingPath.name: drawingPath,
      DetailField.drawingExpirationDate.name: drawingExpirationDate?.toIso8601String(),
      DetailField.photoPath.name: photoPath,
      DetailField.subDetailIds.name: jsonEncode(subDetailIds),
    };
  }

  void updateField(DetailField key, dynamic value) {
    switch (key) {
      case DetailField.orderNumber:
        orderNumber = value as String;
        break;
      case DetailField.name:
        name = value as String;
        break;
      case DetailField.info:
        info = value as String?;
        break;
      case DetailField.drawingExpirationDate:
        drawingExpirationDate = value as DateTime?;
        break;
      case DetailField.drawingPath:
        drawingPath = value as String?;
        break;
      case DetailField.photoPath:
        photoPath = value as String?;
        break;
      case DetailField.id:
      case DetailField.comment:
      case DetailField.techProcess:
      case DetailField.type:
      case DetailField.status:
      case DetailField.createdAt:
      case DetailField.modifiedAt:
      case DetailField.parentId:
      case DetailField.subDetailIds:
    }
  }

  DetailDto copyWith({
    int? id,
    int? parentId,
    String? orderNumber,
    String? name,
    String? info,
    DateTime? drawingExpirationDate,
    String? drawingPath,
    String? photoPath,
    List<int>? subDetailIds,
    DateTime? createdAt,
    DateTime? modifiedAt,
  }) {
    return DetailDto(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      orderNumber: orderNumber ?? this.orderNumber,
      name: name ?? this.name,
      info: info ?? this.info,
      drawingExpirationDate: drawingExpirationDate ?? this.drawingExpirationDate,
      drawingPath: drawingPath ?? this.drawingPath,
      photoPath: photoPath ?? this.photoPath,
      subDetailIds: subDetailIds ?? this.subDetailIds,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
    );
  }

  DetailDto fromDetail(Detail? detail) {
    return DetailDto(
      id: detail?.id,
      parentId: detail?.parentId,
      name: detail?.name,
      orderNumber: detail?.orderNumber,
      info: detail?.info,
      drawingExpirationDate: detail?.drawingExpirationDate,
      drawingPath: detail?.drawingPath,
      photoPath: detail?.photoPath,
      subDetailIds: detail?.subDetailIds ?? [],
      createdAt: detail?.createdAt,
      modifiedAt: detail?.modifiedAt,
    );
  }
}
