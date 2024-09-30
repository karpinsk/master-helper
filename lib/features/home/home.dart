import 'package:flutter/material.dart';
import 'package:master_helper/features/detail_form/detail_form_page.dart';
import 'package:master_helper/generated/l10n.dart';
import 'package:master_helper/features/home/widgets/menu_button.dart';
import 'package:master_helper/features/settings/settings.dart';
import 'package:master_helper/features/specification/specification_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MenuButton(
                    destination: const SpecificationPage(),
                    text: S.of(context).details,
                  ),
                ),
                Expanded(
                  child: MenuButton(
                    destination: const DetailFormPage(),
                    text: S.of(context).addDetail,
                  ),
                ),
                Expanded(
                  child: MenuButton(
                    destination: const SettingsScreen(),
                    text: S.of(context).settings,
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
