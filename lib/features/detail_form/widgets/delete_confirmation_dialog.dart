import 'package:flutter/material.dart';
import 'package:master_helper/generated/l10n.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  const DeleteConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final navigator = Navigator.of(context);

    return AlertDialog(
      title: Text(localized.deleteConfirmation),
      content: Text(localized.deleteConfirmationMessage),
      actions: <Widget>[
        TextButton(
          child: Text(localized.cancel),
          onPressed: () {
            navigator.pop(false);
          },
        ),
        TextButton(
          child: Text(localized.delete),
          onPressed: () {
            navigator.pop(true);
          },
        ),
      ],
    );
  }

  static Future<bool> showDeleteConfirmationDialog(BuildContext context) async {
    return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return const DeleteConfirmationDialog();
          },
        ) ??
        false;
  }
}
