import 'dart:io';
import 'package:flutter/material.dart';

class ImageField extends StatelessWidget {
  final String? imagePath;

  const ImageField({this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    if (imagePath == null) {
      return const Center(
        child: Text(
          'Image not found',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      );
    }

    final file = File(imagePath!);
    if (!file.existsSync()) {
      return const Center(
        child: Text(
          'Image not found',
          style: TextStyle(color: Colors.black, fontSize: 18),
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