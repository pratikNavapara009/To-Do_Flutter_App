import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo_app/helpers/theme_helphers.dart';
import 'package:flutter_todo_app/screens/homepage.dart';
import 'package:flutter_todo_app/screens/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      builder: (context, _) {
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(
            useMaterial3: true,
          ),
          themeMode:
              (Provider.of<ThemeProvider>(context).themeModel.isDark == false)
                  ? ThemeMode.light
                  : ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          initialRoute: "splash",
          routes: {
            '/': (context) => const HomePage(),
            'splash': (context) => const Splash(),
          },
        );
      },
    );
  }
}
