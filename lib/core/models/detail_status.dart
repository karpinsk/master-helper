import 'package:flutter/material.dart';
import 'package:master_helper/generated/l10n.dart';

enum DetailStatus {
  waiting(Colors.transparent),
  inProgress(Colors.green);

  const DetailStatus(this.color);

  final Color color;
}

extension StatusExtension on DetailStatus {
  String get name {
    return switch (this) {
      DetailStatus.inProgress => S.current.statusInProgress,
      DetailStatus.waiting => S.current.statusWaiting,
    };
  }
}
