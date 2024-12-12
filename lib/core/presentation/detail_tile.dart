import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:master_helper/core/models/detail.dart';
import 'package:master_helper/core/models/detail_status.dart';
import 'package:master_helper/generated/l10n.dart';

class DetailTile extends StatelessWidget {
  final Detail detail;
  final VoidCallback onTap;
  final VoidCallback onSlide;

  const DetailTile({
    Key? key,
    required this.detail,
    required this.onTap,
    required this.onSlide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);

    final isInProgress = detail.status == DetailStatus.inProgress;

    final borderColor = _getBorderColor(detail);
    final isSlidingEnabled = _isSlidingEnabled(detail);

    return Container(
      decoration: BoxDecoration(
        border: borderColor != null ? Border.all(color: borderColor, width: 2) : null,
      ),
      child: isSlidingEnabled
          ? Slidable(
              key: ValueKey(detail.id),
              startActionPane: ActionPane(
                extentRatio: 0.5,
                motion: const DrawerMotion(),
                children: [
                  SlidableAction(
                    onPressed: (BuildContext context) => onSlide(),
                    backgroundColor: isInProgress ? const Color.fromARGB(255, 31, 29, 29) : Colors.green,
                    foregroundColor: Colors.white,
                    icon: isInProgress ? Icons.timelapse : Icons.add_task,
                    label: isInProgress ? S.current.statusWaiting : S.current.statusInProgress,
                  ),
                ],
              ),
              child: _buildListTile(borderColor, localized, detail),
            )
          : _buildListTile(borderColor, localized, detail),
    );
  }

  ListTile _buildListTile(Color? borderColor, S localize, Detail detail) {
    final expirationDate = detail.drawingExpirationDate;
    final isExpired = expirationDate != null && expirationDate.isBefore(DateTime.now());
    final isSoonExpiring = expirationDate != null && expirationDate.difference(DateTime.now()).inDays <= 9;

    return ListTile(
      trailing: isExpired || isSoonExpiring
          ? Tooltip(
              message: isExpired ? S.current.drawingExpired : S.current.drawingSoonExpiring,
              child: Icon(
                Icons.info_outline,
                color: borderColor,
              ),
            )
          : null,
      title: Text(
        detail.parentId == null
            ? localize.detailTileText(detail.orderNumber, detail.name)
            : localize.subDetailTileText(detail.name),
      ),
      onTap: onTap,
    );
  }

  Color? _getBorderColor(Detail detail) {
    if (detail.parentId == null) return null;

    final expirationDate = detail.drawingExpirationDate;
    final now = DateTime.now();

    if (expirationDate != null && expirationDate.isBefore(now)) {
      return Colors.red;
    } else if (expirationDate != null && expirationDate.difference(now).inDays <= 9) {
      return Colors.orange;
    } else if (detail.status == DetailStatus.inProgress) {
      return Colors.green;
    }

    return null;
  }

  bool _isSlidingEnabled(Detail detail) {
    final expirationDate = detail.drawingExpirationDate;
    final now = DateTime.now();

    final isExpired = expirationDate != null && expirationDate.isBefore(now);
    final isSoonExpiring = expirationDate != null && expirationDate.difference(now).inDays <= 9;

    return detail.parentId != null && !isExpired && !isSoonExpiring;
  }
}
