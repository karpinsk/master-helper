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

    final drawingStatus = _getDrawingStatus(detail);
    final isSlidingEnabled = detail.parentId != null &&
        drawingStatus != DrawingStatus.soonExpiring &&
        drawingStatus != DrawingStatus.expired;
    final drawingInProgress = drawingStatus == DrawingStatus.inProgress;

    return Container(
      decoration: BoxDecoration(
        border: drawingStatus != DrawingStatus.waiting ? Border.all(color: drawingStatus.color, width: 2) : null,
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
                    backgroundColor: drawingInProgress ? const Color.fromARGB(255, 31, 29, 29) : Colors.green,
                    foregroundColor: Colors.white,
                    icon: drawingInProgress ? Icons.timelapse : Icons.add_task,
                    label: drawingInProgress ? S.current.statusWaiting : S.current.statusInProgress,
                  ),
                ],
              ),
              child: _buildListTile(drawingStatus, localized),
            )
          : _buildListTile(drawingStatus, localized),
    );
  }

  ListTile _buildListTile(DrawingStatus drawingStatus, S localize) {
    return ListTile(
      trailing: drawingStatus.isWarning
          ? Icon(
              Icons.warning,
              color: drawingStatus.color,
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
}

enum DrawingStatus {
  inProgress(Colors.green),
  waiting(Color.fromARGB(255, 31, 29, 29)),
  soonExpiring(Colors.orange),
  expired(Colors.red);

  const DrawingStatus(this.color);

  final Color color;

  bool get isWarning => this == DrawingStatus.soonExpiring || this == DrawingStatus.expired;
}

DrawingStatus _getDrawingStatus(Detail detail) {
  final expirationDate = detail.drawingExpirationDate;

  if (expirationDate != null) {
    if (expirationDate.isBefore(DateTime.now())) {
      return DrawingStatus.expired;
    } else if (expirationDate.difference(DateTime.now()).inDays <= 9) {
      return DrawingStatus.soonExpiring;
    }
  }

  return detail.status == DetailStatus.inProgress ? DrawingStatus.inProgress : DrawingStatus.waiting;
}
