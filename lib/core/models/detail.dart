import 'dart:convert';

import 'package:master_helper/core/models/detail_status.dart';

class Detail {
  int? id;
  String orderNumber;
  String name;
  String? info;
  String? comment;
  String? techProcess;
  DetailStatus status;
  DateTime createdAt;
  DateTime modifiedAt;
  int? parentId;
  String? drawingPath;
  DateTime? drawingExpirationDate;
  String? photoPath;
  List<int> subDetailIds;

  Detail({
    this.id,
    this.info,
    this.comment,
    this.techProcess,
    required this.orderNumber,
    required this.name,
    required this.status,
    required this.createdAt,
    required this.modifiedAt,
    this.parentId,
    this.drawingPath,
    this.drawingExpirationDate,
    this.photoPath,
    List<int>? subDetailIds,
  }) : subDetailIds = subDetailIds ?? [];

  static Detail fromJson(Map<String, dynamic> json) {
    return Detail(
      id: json['id'],
      info: json['info'],
      comment: json['comment'],
      techProcess: json['techProcess'],
      orderNumber: json['orderNumber'],
      name: json['name'],
      status: DetailStatus.values[json['status']],
      createdAt: DateTime.parse(json['createdAt']),
      modifiedAt: DateTime.parse(json['modifiedAt']),
      parentId: json['parentId'],
      drawingPath: json['drawingPath'],
      drawingExpirationDate: DateTime.tryParse(json['drawingExpirationDate'] ?? ''),
      photoPath: json['photoPath'],
      subDetailIds: (json['subDetailIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'info': info,
      'comment': comment,
      'techProcess': techProcess,
      'orderNumber': orderNumber,
      'name': name,
      'status': status.index,
      'createdAt': createdAt.toIso8601String(),
      'modifiedAt': modifiedAt.toIso8601String(),
      'parentId': parentId,
      'drawingPath': drawingPath,
      'drawingExpirationDate': drawingExpirationDate?.toIso8601String(),
      'photoPath': photoPath,
      'subDetailIds': jsonEncode(subDetailIds),
    };
  }

  static Detail fromMap(Map<String, dynamic> map) {
    return Detail(
      id: map['id'],
      info: map['info'],
      comment: map['comment'],
      techProcess: map['techProcess'],
      orderNumber: map['orderNumber'],
      name: map['name'],
      status: DetailStatus.values[map['status']],
      createdAt: DateTime.parse(map['createdAt']),
      modifiedAt: DateTime.parse(map['modifiedAt']),
      parentId: map['parentId'],
      drawingPath: map['drawingPath'],
      drawingExpirationDate: DateTime.tryParse(map['drawingExpirationDate'] ?? ''),
      photoPath: map['photoPath'],
      subDetailIds: map['subDetailIds'] != null && map['subDetailIds'].isNotEmpty
          ? (jsonDecode(map['subDetailIds']) as List<dynamic>).map((e) => e as int).toList()
          : [],
    );
  }

  Detail copyWith({
    int? id,
    String? orderNumber,
    String? name,
    String? info,
    String? comment,
    String? techProcess,
    DetailStatus? status,
    DateTime? createdAt,
    DateTime? modifiedAt,
    int? parentId,
    String? drawingPath,
    DateTime? drawingExpirationDate,
    String? photoPath,
    List<int>? subDetailIds,
  }) {
    return Detail(
      id: id ?? this.id,
      orderNumber: orderNumber ?? this.orderNumber,
      name: name ?? this.name,
      info: info ?? this.info,
      comment: comment ?? this.comment,
      techProcess: techProcess ?? this.techProcess,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: DateTime.now(),
      parentId: parentId ?? this.parentId,
      drawingPath: drawingPath ?? this.drawingPath,
      drawingExpirationDate: drawingExpirationDate ?? this.drawingExpirationDate,
      photoPath: photoPath ?? this.photoPath,
      subDetailIds: subDetailIds ?? this.subDetailIds,
    );
  }
}
