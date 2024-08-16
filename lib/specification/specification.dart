import 'package:flutter/material.dart';

class Specification extends StatelessWidget {
  final bool itemSelected;
  const Specification({required this.itemSelected, super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> itemsByMonth = {
      'январь 2024': ['Пневмоцилиндр', 'Редуктор цилиндрический', 'Маховик'],
      'февраль 2024': ['Ось', 'Поршень'],
      'март 2024': ['Ступица', 'Ступица', 'Ступица', 'Ступица'],
      // Add more months and items here
    };

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context); // Pop the current page off the navigation stack
        },
        child: const Icon(Icons.arrow_back),
        tooltip: 'Go Back',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Column
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // ListView.builder wrapped with Expanded for constrained height
                  child: ListView(
                    children: itemsByMonth.entries.map((entry) {
                      String month = entry.key;
                      List<String> items = entry.value;
                      return ExpansionTile(
                        title: Text(month),
                        children: items
                            .map((item) => Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text(item),
                                      ),
                                      Divider(
                                        color: Colors.black54,
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          // Second Column
          Expanded(
            flex: 2,
            child: itemSelected
                ? const Center(
                    child: Text(
                    'Выберите деталь для отображения информации о ней',
                    style: TextStyle(fontSize: 40, color: Colors.black45),
                    textAlign: TextAlign.center,
                  ))
                : const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('DD-18', style: TextStyle(fontSize: 24)),
                      DefaultTabController(
                        length: 3,
                        child: Expanded(
                          child: Scaffold(
                            appBar: TabBar(
                              labelColor: Colors.black45,
                              tabs: [
                                Tab(text: 'Чертёж'),
                                Tab(text: 'Количество'),
                                Tab(text: 'Фото'),
                              ],
                            ),
                            body: ColoredBox(
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  'Content Area',
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
