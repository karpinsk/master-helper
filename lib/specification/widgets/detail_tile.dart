import 'package:flutter/material.dart';
import 'package:slasher/models/detail.dart';

class DetailTile extends StatelessWidget {
  final VoidCallback onTap;
  final Detail detail;

  const DetailTile({
    super.key,
    required this.onTap,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: detail.type.getBackgroundColor(detail.type),
      title: Text(
        detail.parentId == null
            ? '${detail.orderNumber} ${detail.name} - ${detail.quantity} шт.'
            : '${detail.name} - ${detail.quantity} шт.',
      ),
      onTap: onTap,
    );
  }
}
