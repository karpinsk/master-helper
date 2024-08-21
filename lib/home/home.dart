import 'package:flutter/material.dart';
import 'package:slasher/add-detail/addDetail.dart';
import 'package:slasher/design-system/menu_button.dart';
import 'package:slasher/settings/settings.dart';
import 'package:slasher/specification/specification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8, // Set the width to 80% of the screen width
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MenuButton(
                  destination: Specification(),
                  text: 'Детали',
                ),
              ),
              Expanded(
                child: MenuButton(
                  destination: DetailForm(),
                  text: 'Добавить деталь',
                ),
              ),
              Expanded(
                child: MenuButton(
                  destination: SettingsScreen(),
                  text: 'Настройки',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
