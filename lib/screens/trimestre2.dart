import 'package:academico/screens/trimestre1.dart';
import 'package:academico/screens/trimestre3.dart';
import 'package:flutter/material.dart';

class Trimestre2Screen extends StatefulWidget {
  @override
  _Trimestre2Screen createState() => _Trimestre2Screen();
}

class _Trimestre2Screen extends State<Trimestre2Screen> {
  final List<Map<String, dynamic>> subjects = [
    {"name": "Matemáticas", "score": 90, "color": Colors.green},
    {"name": "Lenguaje", "score": 98, "color": Colors.green},
    {"name": "Ciencias Sociales", "score": 78, "color": Colors.green},
    {"name": "Historia", "score": 51, "color": Colors.orange},
    {"name": "Educación Física", "score": 95, "color": Colors.green},
    {"name": "Arte", "score": 99, "color": Colors.green},
    {"name": "Religión", "score": 70, "color": Colors.orange},
  ];

  String _selectedTrimestre = '2do Trimestre';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calificaciones',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Henry Saavedra Gomez',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    DropdownButton<String>(
                      value: _selectedTrimestre,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      dropdownColor: Colors.indigo,
                      underline: Container(
                        height: 2,
                        color: Colors.black,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedTrimestre = newValue!;
                          if (newValue == '3er Trimestre') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Trimestre3Screen()),
                            );
                          }
                          if (newValue == '1er Trimestre') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Trimestre1Screen()),
                            );
                          }
                          if (newValue == '2do Trimestre') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Trimestre2Screen()),
                            );
                          }
                        });
                      },
                      items: <String>[
                        '1er Trimestre',
                        '2do Trimestre',
                        '3er Trimestre'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: subjects.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: ListTile(
                        leading: Text(
                          subjects[index]['name'],
                          style: const TextStyle(fontSize: 18),
                        ),
                        trailing: Text(
                          subjects[index]['score'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: subjects[index]['color'],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
