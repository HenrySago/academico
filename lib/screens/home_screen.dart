//import 'package:academico/pages/events_page.dart';
//import 'package:academico/pages/events_page.dart';
import 'package:academico/screens/calificaciones_screen.dart';
import 'package:academico/screens/evento_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Global Education',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '¡Bienvenido a la Global Education!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 50),
            Image.asset(
              'assets/baner1.jpg',
              height: 250,
            ),
            const SizedBox(height: 20),
            Center(
              child: const Text(
                '¡Fomentando el aprendizaje y la excelencia en cada estudiante!',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Acción para el botón Eventos
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AgendaScreen()), //EventoScreen()),
                );
              },
              child: const Text('Agenda'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Acción para el botón Eventos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuTrimestre()),
                );
              },
              child: const Text('Calificaciones'),
            ),
          ],
        ),
      ),
    );
  }
}
