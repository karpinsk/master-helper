import 'package:flutter/material.dart';

class CommentField extends StatefulWidget {
  final String? initialComment;
  final void Function(String comment) onSave;

  const CommentField({super.key, this.initialComment, required this.onSave});

  @override
  State<CommentField> createState() => _CommentFieldState();
}

class _CommentFieldState extends State<CommentField> {
  late TextEditingController _commentController;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController(text: widget.initialComment);
  }

  @override
  void didUpdateWidget(covariant CommentField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialComment != oldWidget.initialComment) {
      _commentController.text = widget.initialComment ?? '';
    }
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  void _saveComment() {
    widget.onSave(_commentController.text);
    setState(() {
      _isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _isEditing
                ? TextField(
                    controller: _commentController,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: 'Добавьте заметку...',
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(),
                    ),
                  )
                : Text(
                    _commentController.text.isEmpty ? 'Нет заметок' : _commentController.text,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _isEditing
                    ? ElevatedButton(
                        onPressed: _saveComment,
                        child: const Text('Сохранить'),
                      )
                    : ElevatedButton(
                        onPressed: () => setState(() {
                          _isEditing = true;
                        }),
                        child: const Text('Изменить'),
                      ),
                if (_isEditing) const SizedBox(width: 8.0),
                if (_isEditing)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _commentController.text = widget.initialComment ?? '';
                        _isEditing = false;
                      });
                    },
                    child: const Text('Отмена'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
