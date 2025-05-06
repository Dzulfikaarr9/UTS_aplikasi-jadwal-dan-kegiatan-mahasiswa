import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  final List<Map<String, String>> _jadwal = const [
    {
      "hari": "Senin",
      "mataKuliah": "Pemrograman Mobile",
      "jam": "08:00 - 10:00",
    },
    {"hari": "Selasa", "mataKuliah": "Struktur Data", "jam": "10:00 - 12:00"},
    {"hari": "Rabu", "mataKuliah": "PBO", "jam": "09:00 - 11:00"},
    {"hari": "Kamis", "mataKuliah": "Basis Data", "jam": "13:00 - 15:00"},
    {"hari": "Jumat", "mataKuliah": "Sistem Operasi", "jam": "08:00 - 10:00"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jadwal Kuliah')),
      body: ListView.builder(
        itemCount: _jadwal.length,
        itemBuilder: (context, index) {
          final item = _jadwal[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(item['mataKuliah']!),
              subtitle: Text('${item['hari']} | ${item['jam']}'),
              leading: const Icon(Icons.schedule),
            ),
          );
        },
      ),
    );
  }
}
