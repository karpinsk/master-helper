import 'dart:io';
import 'package:flutter/material.dart';
import 'package:master_helper/generated/l10n.dart';

class ImageField extends StatelessWidget {
  final String? imagePath;
  final DateTime? drawingExpirationDate;

  const ImageField({this.imagePath, this.drawingExpirationDate, super.key});

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    if (imagePath == null) {
      return Center(
        child: Text(
          localized.imageNotAdded,
          style: const TextStyle(fontSize: 18),
        ),
      );
    }

    if (drawingExpirationDate != null && drawingExpirationDate!.isBefore(DateTime.now())) {
      return Center(
        child: Text(
          localized.drawingExpired,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
      );
    }

    final file = File(imagePath!);
    if (!file.existsSync()) {
      return Center(
        child: Text(
          localized.imageNotFound,
          style: const TextStyle(fontSize: 18),
        ),
      );
    }

    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                body: Center(
                  child: InteractiveViewer(
                    minScale: 0.1,
                    maxScale: 6.0,
                    clipBehavior: Clip.none,
                    child: Image.file(
                      file,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        child: Image.file(file));
  }
}
