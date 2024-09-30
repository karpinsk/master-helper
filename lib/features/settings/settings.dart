import 'package:flutter/material.dart';
import 'package:master_helper/generated/l10n.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).settings)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                localized.detailColors,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: _DetailColorTable(
                  headers: [localized.type, localized.color],
                  rows: [
                    _DetailColorRow(
                      icon: const Icon(Icons.warning, color: Colors.red),
                      label: S.current.drawingExpired,
                    ),
                    _DetailColorRow(
                      icon: const Icon(Icons.warning, color: Colors.orange),
                      label: S.current.drawingSoonExpiring,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailColorRow {
  final Widget icon;
  final String label;

  _DetailColorRow({required this.icon, required this.label});
}

class _DetailColorTable extends StatelessWidget {
  final List<String> headers;
  final List<_DetailColorRow> rows;

  const _DetailColorTable({
    required this.headers,
    required this.rows,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: [
        _buildHeaderRow(),
        ..._buildDataRows(),
      ],
    );
  }

  TableRow _buildHeaderRow() {
    return TableRow(
      children: headers
          .map(
            (header) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                header,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
          .toList(),
    );
  }

  List<TableRow> _buildDataRows() {
    return rows.map((row) {
      return TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(child: row.icon),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              row.label,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }).toList();
  }
}
