import 'package:academico/pages/asisitencia_page.dart';
import 'package:academico/pages/events_page.dart';
import 'package:flutter/material.dart';

class AgendaScreen extends StatelessWidget {
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
              '¡Agenda!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Acción para el botón Eventos
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EventoPage()), //EventoScreen()),
                );
              },
              child: const Text('Eventos'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Acción para el botón Eventos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AsistenciaScreen()),
                );
              },
              child: const Text('Asistencias'),
            ),
          ],
        ),
      ),
    );
  }
}
