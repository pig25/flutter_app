import 'package:flutter/material.dart';
import 'package:flutter_app/menu/meun_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
      title: '123',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
         Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),//台灣語言
      ],
      locale: Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
      home: Menu_Screen()));
}
