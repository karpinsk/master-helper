import 'package:flutter/material.dart';
import 'package:master_helper/generated/l10n.dart';

class BackFab extends StatelessWidget {
  const BackFab({
    super.key,
    required this.destination,
  });

  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      tooltip: S.current.back,
      child: const Icon(Icons.arrow_back),
    );
  }
}
