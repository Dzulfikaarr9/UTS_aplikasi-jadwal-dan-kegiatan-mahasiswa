import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _activities = [
    {"nama": "Belajar Flutter", "tanggal": "6 Mei 2025", "selesai": false},
    {"nama": "Kerjakan Tugas PBO", "tanggal": "7 Mei 2025", "selesai": true},
    {"nama": "Rapat Organisasi", "tanggal": "8 Mei 2025", "selesai": false},
  ];

  final String _quote =
      "“Ilmu itu seperti cahaya, semakin banyak kamu cari, semakin terang jalanmu."
      "Jangan menyerah, karena hal-hal besar membutuhkan waktu dan ketekunan.”\n– Eleanor Roosevelt";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kegiatan Mahasiswa')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin: const EdgeInsets.all(16),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                _quote,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _activities.length,
              itemBuilder: (context, index) {
                final activity = _activities[index];
                return CheckboxListTile(
                  title: Text(activity['nama']),
                  subtitle: Text('Tanggal: ${activity['tanggal']}'),
                  value: activity['selesai'],
                  onChanged: (value) {
                    setState(() {
                      _activities[index]['selesai'] = value;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
