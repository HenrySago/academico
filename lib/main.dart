import 'package:academico/screens/trimestre2.dart';
import 'package:flutter/material.dart';
import 'package:academico/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Global Education',
      initialRoute: 'home',
      routes: {
        'home': (_) => MyHomePage(),
        'agenda': (_) => AgendaScreen(),
        'calificaciones': (_) => MenuTrimestre(),
        'trimestre2': (_) => Trimestre2Screen(),
        'trimestre3': (_) => Trimestre2Screen(),
        'trimestre1': (_) => Trimestre2Screen(),
      },
      theme: ThemeData.light()
          .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo)),
      //home: MyHomePage(),
    );
  }
}
