// import 'dart:convert';
// import 'package:academico/models/event.dart';
// import 'package:http/http.dart' as http;

// class ApiService {
//   final String apiUrl =
//       "https://cbfc-181-115-172-156.ngrok-free.app/api/comunicados"; // Reemplaza con la URL de tu API

//   Future<List<Event>> fetchEvents() async {
//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       List<dynamic> body = jsonDecode(response.body);
//       List<Event> events =
//           body.map((dynamic item) => Event.fromJson(item)).toList();
//       return events;
//     } else {
//       throw Exception('Failed to load events');
//     }
//   }
// }
