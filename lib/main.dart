import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('ru', 'RU'), Locale('uz', 'UZ'),Locale('fr', 'FR'),Locale('ko', 'KR'),Locale('ja', 'JP'),],
        path: 'assets/translations', //
        fallbackLocale: Locale('en', 'US'),
        child: RunMyApp()
    ),
  );
}

class RunMyApp extends StatefulWidget{
  const RunMyApp({super.key});

  @override
  State<StatefulWidget> createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData.light(useMaterial3: true),//light mode
      darkTheme: ThemeData.dark(), //dark mode
      themeMode: themeMode,
      home: HomePage(),
    );
  }
}
