
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          const CircleAvatar(
            radius: 45,
            backgroundColor: Colors.deepPurple,
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            'Muhammad Ridwan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Keahlian',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const ListTile(
            leading: Icon(Icons.code),
            title: Text('Pemrograman'),
            subtitle: Text('Dart, PHP, dan Java'),
          ),

          const ListTile(
            leading: Icon(Icons.web),
            title: Text('Web Development'),
            subtitle: Text('HTML, CSS, dan PHP'),
          ),

          const ListTile(
            leading: Icon(Icons.phone_android),
            title: Text('Mobile Development'),
            subtitle: Text('Flutter dan Android'),
          ),

          const SizedBox(height: 20),

          const Text(
            'Hobi',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const ListTile(
            leading: Icon(Icons.computer),
            title: Text('Belajar Teknologi'),
          ),

          const ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text('Mempelajari Hal Baru'),
          ),

          const ListTile(
            leading: Icon(Icons.developer_mode),
            title: Text('Membuat Project'),
          ),

          const SizedBox(height: 20),

          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const ListTile(
            leading: Icon(Icons.school),
            title: Text('Global Institute'),
            subtitle: Text(
              'Software Engineering - TI 24 SE1',
            ),
          ),

          const ListTile(
            leading: Icon(Icons.school_outlined),
            title: Text('Pendidikan Sebelumnya'),
            subtitle: Text(
              'Isi nama sekolah sebelumnya',
            ),
          ),
        ],
      ),
    );
  }
}
