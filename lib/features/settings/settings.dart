import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/core/blocs/language/language_cubit.dart';
import 'package:master_helper/core/blocs/theme/theme_cubit.dart';
import 'package:master_helper/core/models/language.dart';
import 'package:master_helper/generated/l10n.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final isDark = context.watch<ThemeCubit>().state.isDarkTheme;
    final languageCode = context.watch<LanguageCubit>().state.languageCode;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).settings)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      localized.darkTheme,
                      style: textTheme.titleSmall,
                    ),
                    SizedBox(
                      width: 60,
                      height: 48,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          value: isDark,
                          onChanged: (value) {
                            context.read<ThemeCubit>().setThemeBrightness(value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    localized.language,
                    style: textTheme.titleSmall,
                  ),
                  DropdownMenu<Language>(
                    enableSearch: false,
                    enableFilter: false,
                    initialSelection: Language.fromCode(languageCode),
                    dropdownMenuEntries: Language.values
                        .map((language) => DropdownMenuEntry(
                              value: language,
                              label: language.name,
                            ))
                        .toList(),
                    onSelected: (language) => context.read<LanguageCubit>().setLanguage(language!.code),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
