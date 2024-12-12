import 'package:flutter/material.dart';
import 'package:master_helper/features/detail_form/detail_form_page.dart';
import 'package:master_helper/features/orders/orders_page.dart';
import 'package:master_helper/generated/l10n.dart';
import 'package:master_helper/features/home/widgets/menu_button.dart';
import 'package:master_helper/features/settings/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
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
                    destination: const OrdersPage(),
                    text: localized.details,
                  ),
                ),
                Expanded(
                  child: MenuButton(
                    destination: const DetailFormPage(),
                    text: localized.addDetail,
                  ),
                ),
                Expanded(
                  child: MenuButton(
                    destination: const SettingsScreen(),
                    text: localized.settings,
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
