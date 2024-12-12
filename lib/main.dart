import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:master_helper/core/blocs/language/language_cubit.dart';
import 'package:master_helper/core/blocs/theme/theme_cubit.dart';
import 'package:master_helper/core/repositories/settings/settings.dart';
import 'package:master_helper/generated/l10n.dart';
import 'package:master_helper/features/home/home.dart';
import 'package:master_helper/core/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  final prefs = await SharedPreferences.getInstance();
  final SettingsRepository settingsRepository = SettingsRepository(prefs: prefs);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit(settingsRepository: settingsRepository)),
        BlocProvider(create: (_) => LanguageCubit(settingsRepository: settingsRepository)),
      ],
      child: MasterHelper(
        prefs: prefs,
      ),
    ),
  );
}

class MasterHelper extends StatelessWidget {
  const MasterHelper({super.key, required this.prefs});

  final SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.watch<ThemeCubit>().state.isDarkTheme;
    final languageCode = context.watch<LanguageCubit>().state.languageCode;

    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: isDarkTheme ? darkTheme : lightTheme,
      locale: Locale.fromSubtags(languageCode: languageCode),
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
