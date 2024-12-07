import 'package:flutter/material.dart';
import 'package:master_helper/generated/l10n.dart';

void showDetailFormSnackbar({
  required BuildContext context,
  required String message,
  String? actionLabel,
  Duration duration = const Duration(seconds: 3),
  VoidCallback? onActionPressed,
}) {
  final messenger = ScaffoldMessenger.of(context);
  messenger.showSnackBar(
    SnackBar(
      duration: duration,
      action: SnackBarAction(
        label: actionLabel ?? S.current.ok,
        onPressed: onActionPressed ?? () => messenger.hideCurrentSnackBar(),
      ),
      content: Text(message),
    ),
  );
}
