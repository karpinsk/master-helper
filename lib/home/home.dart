import 'package:flutter/material.dart';
import 'package:slasher/add_detail/detail_form_view.dart';
import 'package:slasher/home/widgets/menu_button.dart';
import 'package:slasher/settings/settings.dart';
import 'package:slasher/specification/specification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
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
      ),
    );
  }
}
