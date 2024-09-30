import 'package:flutter/material.dart';
import 'package:master_helper/generated/l10n.dart';

class InformationField extends StatefulWidget {
  final String? initialValue;
  final void Function(String info) onSave;

  const InformationField({super.key, this.initialValue, required this.onSave});

  @override
  State<InformationField> createState() => _InformationFieldState();
}

class _InformationFieldState extends State<InformationField> {
  late TextEditingController _infoController;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _infoController = TextEditingController(text: widget.initialValue);
  }

  @override
  void didUpdateWidget(covariant InformationField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _infoController.text = widget.initialValue ?? '';
    }
  }

  @override
  void dispose() {
    _infoController.dispose();
    super.dispose();
  }

  void _saveInfo() {
    widget.onSave(_infoController.text);
    setState(() {
      _isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _isEditing
                ? TextField(
                    controller: _infoController,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: localized.addNote,
                      border: const OutlineInputBorder(),
                    ),
                  )
                : Text(
                    _infoController.text.isEmpty ? localized.noNotes : _infoController.text,
                    style: const TextStyle(fontSize: 18),
                  ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _isEditing
                    ? ElevatedButton(
                        onPressed: _saveInfo,
                        child: Text(localized.save),
                      )
                    : ElevatedButton(
                        onPressed: () => setState(() {
                          _isEditing = true;
                        }),
                        child: Text(localized.edit),
                      ),
                if (_isEditing) const SizedBox(width: 8.0),
                if (_isEditing)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _infoController.text = widget.initialValue ?? '';
                        _isEditing = false;
                      });
                    },
                    child: Text(localized.cancel),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
