import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SpaceXScreen extends StatefulWidget {
  const SpaceXScreen({super.key});

  @override
  _SpaceXScreenState createState() => _SpaceXScreenState();
}

class _SpaceXScreenState extends State<SpaceXScreen> {
  // Método para obtener lanzamientos de SpaceX
  Future<List<Map<String, dynamic>>> fetchLaunches() async {
    final url = Uri.parse('https://api.spacexdata.com/v4/launches');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List data = json.decode(response.body);
        return data.map((launch) {
          return {
            "name": launch["name"] ?? "Desconocido",
            "date": launch["date_utc"] ?? "Fecha no disponible",
            "success": launch["success"],
            "patch": launch["links"]["patch"]["small"],
          };
        }).toList();
      } else {
        throw Exception(
            'Error al cargar datos de SpaceX. Código: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error al conectar con la API: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpaceX Launches'),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: fetchLaunches(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'No hay lanzamientos disponibles.',
                style: TextStyle(color: Colors.white),
              ),
            );
          } else {
            final List<Map<String, dynamic>> launches = snapshot.data!;
            return ListView.builder(
              itemCount: launches.length,
              itemBuilder: (context, index) {
                final launch = launches[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: launch["patch"] != null
                        ? Image.network(
                            launch["patch"]!,
                            width: 50,
                            height: 50,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.broken_image, size: 50);
                            },
                          )
                        : const Icon(Icons.rocket, size: 50),
                    title: Text(launch["name"]),
                    subtitle: Text(
                      "Fecha: ${formatDate(launch["date"])}\nÉxito: ${launch["success"] == true ? 'Sí' : 'No'}",
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  // Método para formatear fechas
  String formatDate(String? date) {
    if (date == null || date.isEmpty) {
      return "Fecha no disponible";
    }
    try {
      final DateTime parsedDate = DateTime.parse(date);
      return "${parsedDate.day}/${parsedDate.month}/${parsedDate.year} ${parsedDate.hour}:${parsedDate.minute}";
    } catch (e) {
      return "Formato de fecha inválido";
    }
  }
}
