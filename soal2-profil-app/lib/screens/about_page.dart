
import 'package:flutter/material.dart';
import '../app_theme.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // Identitas mahasiswa
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

          const Text(
            '1124160151',
            textAlign: TextAlign.center,
          ),

          const Text(
            'Software Engineering - TI 24 SE1',
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 25),

          // Pengaturan tema
          const Text(
            'Pengaturan Tampilan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          ValueListenableBuilder<ThemeMode>(
            valueListenable: appThemeMode,
            builder: (context, mode, child) {
              return Card(
                child: SwitchListTile(
                  secondary: const Icon(Icons.dark_mode),
                  title: const Text('Mode Gelap'),
                  subtitle: Text(
                    mode == ThemeMode.dark
                        ? 'Tampilan gelap aktif'
                        : 'Tampilan terang aktif',
                  ),
                  value: mode == ThemeMode.dark,
                  onChanged: (value) {
                    appThemeMode.value = value
                        ? ThemeMode.dark
                        : ThemeMode.light;
                  },
                ),
              );
            },
          ),

          const SizedBox(height: 20),

          // Keahlian
          const Text(
            'Keahlian',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(
                Icons.code,
                color: Colors.deepPurple,
              ),
              title: Text('Pemrograman'),
              subtitle: Text('Dart, PHP, dan Java'),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(
                Icons.web,
                color: Colors.deepPurple,
              ),
              title: Text('Web Development'),
              subtitle: Text('HTML, CSS, dan PHP'),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(
                Icons.phone_android,
                color: Colors.deepPurple,
              ),
              title: Text('Mobile Development'),
              subtitle: Text('Flutter dan Android'),
            ),
          ),

          const SizedBox(height: 20),

          // Hobi
          const Text(
            'Hobi',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.computer),
              title: Text('Belajar Teknologi'),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.lightbulb),
              title: Text('Mempelajari Hal Baru'),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.developer_mode),
              title: Text('Membuat Project'),
            ),
          ),

          const SizedBox(height: 20),

          // Riwayat pendidikan
          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(
                Icons.school,
                color: Colors.deepPurple,
              ),
              title: Text('Perguruan Tinggi'),
              subtitle: Text(
                'Global Institute\n'
                'Program Studi Software Engineering\n'
                'Kelas TI 24 SE1',
              ),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.school_outlined),
              title: Text('Sekolah Menengah Kejuruan'),
              subtitle: Text(
                'SMKs Binong Permai - 2024.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
