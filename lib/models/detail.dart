import 'dart:convert';

enum DetailType { circle, cutting, casting, rubber, none }

class Detail {
  int? id;
  String orderNumber;
  String name;
  String? mainInformation;
  String? comment;
  int quantity;
  int finishedQuantity;
  DetailType type;
  DateTime createdAt;
  DateTime modifiedAt;
  int? parentId;
  String? drawingImagePath;
  String? regularImagePath;
  List<int> subdetailIds; // List to store IDs of subdetails

  Detail({
    this.id,
    this.mainInformation,
    this.comment,
    this.finishedQuantity = 0,
    required this.orderNumber,
    required this.name,
    required this.quantity,
    required this.type,
    required this.createdAt,
    required this.modifiedAt,
    this.parentId,
    this.drawingImagePath,
    this.regularImagePath,
    List<int>? subdetailIds,
  }) : subdetailIds = subdetailIds ?? [];

  static Detail fromJson(Map<String, dynamic> json) {
    return Detail(
      id: json['id'],
      mainInformation: json['mainInformation'],
      comment: json['comment'],
      finishedQuantity: json['finishedQuantity'],
      orderNumber: json['orderNumber'],
      name: json['name'],
      quantity: json['quantity'],
      type: DetailType.values[json['type']],
      createdAt: DateTime.parse(json['createdAt']),
      modifiedAt: DateTime.parse(json['modifiedAt']),
      parentId: json['parentId'],
      drawingImagePath: json['drawingImagePath'],
      regularImagePath: json['regularImagePath'],
      subdetailIds: (json['subdetailIds'] as List<dynamic>?)?.map((e) => e as int).toList(), // Handle the list of IDs
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'mainInformation': mainInformation,
      'comment': comment,
      'finishedQuantity': finishedQuantity,
      'orderNumber': orderNumber,
      'name': name,
      'quantity': quantity,
      'type': type.index,
      'createdAt': createdAt.toIso8601String(),
      'modifiedAt': modifiedAt.toIso8601String(),
      'parentId': parentId,
      'drawingImagePath': drawingImagePath,
      'regularImagePath': regularImagePath,
      'subdetailIds': jsonEncode(subdetailIds), // Save the list of IDs
    };
  }

  static Detail fromMap(Map<String, dynamic> map) {
    return Detail(
      id: map['id'],
      mainInformation: map['mainInformation'],
      comment: map['comment'],
      finishedQuantity: map['finishedQuantity'],
      orderNumber: map['orderNumber'],
      name: map['name'],
      quantity: map['quantity'],
      type: DetailType.values[map['type']],
      createdAt: DateTime.parse(map['createdAt']),
      modifiedAt: DateTime.parse(map['modifiedAt']),
      parentId: map['parentId'],
      drawingImagePath: map['drawingImagePath'],
      regularImagePath: map['regularImagePath'],
      subdetailIds: map['subdetailIds'] != null && map['subdetailIds'].isNotEmpty
          ? (jsonDecode(map['subdetailIds']) as List<dynamic>).map((e) => e as int).toList()
          : [],
    );
  }

  Detail copyWith({
    int? id,
    String? orderNumber,
    String? name,
    String? mainInformation,
    String? comment,
    int? quantity,
    int? finishedQuantity,
    DetailType? type,
    DateTime? createdAt,
    DateTime? modifiedAt,
    int? parentId,
    String? drawingImagePath,
    String? regularImagePath,
    List<int>? subdetailIds, // Allow copying with a new list of IDs
  }) {
    return Detail(
      id: id ?? this.id,
      orderNumber: orderNumber ?? this.orderNumber,
      name: name ?? this.name,
      mainInformation: mainInformation ?? this.mainInformation,
      comment: comment ?? this.comment,
      quantity: quantity ?? this.quantity,
      finishedQuantity: finishedQuantity ?? this.finishedQuantity,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: DateTime.now(),
      parentId: parentId ?? this.parentId,
      drawingImagePath: drawingImagePath ?? this.drawingImagePath,
      regularImagePath: regularImagePath ?? this.regularImagePath,
      subdetailIds: subdetailIds ?? this.subdetailIds, // Copy the list of IDs
    );
  }
}
