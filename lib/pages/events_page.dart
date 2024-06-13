// import 'package:academico/models/event.dart';
// import 'package:academico/services/api_service.dart';
// import 'package:flutter/material.dart';

// class EventsPage extends StatefulWidget {
//   @override
//   _EventsPageState createState() => _EventsPageState();
// }

// class _EventsPageState extends State<EventsPage> {
//   final ApiService apiService = ApiService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Eventos'),
//       ),
//       body: FutureBuilder<List<Event>>(
//         future: apiService.fetchEvents(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else {
//             List<Event> events = snapshot.data!;
//             return ListView.builder(
//               itemCount: events.length,
//               itemBuilder: (context, index) {
//                 Event event = events[index];
//                 return ListTile(
//                   title: Text(event.titulo),
//                   subtitle: Text(event.descripcion),
//                   //trailing: Text(event.fecha.toString()),
//                   onTap: () {
//                     // agregar más detalles o navegación aquí
//                   },
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:academico/models/event.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EventoPage extends StatefulWidget {
  @override
  _EventoPageState createState() => _EventoPageState();
}

class _EventoPageState extends State<EventoPage> {
  late Future<List<Comunicado>> futureComunicados;

  @override
  void initState() {
    super.initState();
    futureComunicados = fetchComunicados();
  }

  Future<List<Comunicado>> fetchComunicados() async {
    final response = await http.get(Uri.parse(
        'https://cbfc-181-115-172-156.ngrok-free.app/api/comunicados'));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((data) => Comunicado.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load comunicados');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: FutureBuilder<List<Comunicado>>(
          future: futureComunicados,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].titulo),
                    subtitle: Text(snapshot.data![index].descripcion),
                    trailing: Text(snapshot.data![index].fecha),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
