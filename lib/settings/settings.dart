import 'package:flutter/material.dart';
import 'package:slasher/models/detail_type.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Цветовое обозначение деталей',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Table(
                  border: TableBorder.all(),
                  children: _buildTableRows(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<TableRow> _buildTableRows() {
    const detailTypes = DetailType.values;

    return [
      TableRow(
        children: [
          _buildTableHeader('Тип'),
          _buildTableHeader('Цвет'),
        ],
      ),
      for (var type in detailTypes)
        TableRow(
          children: [
            _buildTableCell(type.getDetailTypeName(type)),
            _buildTableCellContainer(type.getBackgroundColor(type)),
          ],
        ),
    ];
  }

  Widget _buildTableHeader(String text) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTableCell(String text) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(text),
    );
  }

  Widget _buildTableCellContainer(Color color) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: color,
      height: 40,
      width: double.infinity,
    );
  }
}
