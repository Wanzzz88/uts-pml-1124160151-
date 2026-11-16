
import 'package:flutter/material.dart';
import '../models/profile.dart';
import 'edit_profile_page.dart';
import 'about_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  // Data profil mahasiswa
  Profile profile = const Profile(
    nama: 'Muhammad Ridwan',
    nim: '1124160151',
    prodi: 'Software Engineering',
    kelas: 'TI 24 SE1',
    bio: 'Mahasiswa yang tertarik dengan pemrograman dan teknologi.',
    email: 'emailkamu@example.com',
    hp: '081234567890',
    github: 'Wanzzz88',
  );

  // Membuka halaman Edit Profil
  Future<void> _editProfil() async {
    final Profile? dataBaru = await Navigator.push<Profile>(
      context,
      MaterialPageRoute(
        builder: (context) {
          return EditProfilePage(profile: profile);
        },
      ),
    );

    // Memperbarui data profil
    if (dataBaru != null && mounted) {
      setState(() {
        profile = dataBaru;
      });
    }
  }

  // Membuka halaman Tentang Saya
  void _bukaTentangSaya() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AboutPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // APP BAR
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      // DRAWER / MENU SAMPING
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            // Header Drawer
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.deepPurple,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    profile.nama,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    profile.nim,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // Menu Profil
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.deepPurple,
              ),
              title: const Text('Profil Saya'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Menu Tentang Saya
            ListTile(
              leading: const Icon(
                Icons.info,
                color: Colors.deepPurple,
              ),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pop(context);
                _bukaTentangSaya();
              },
            ),
          ],
        ),
      ),

      // BODY / ISI HALAMAN
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            // FOTO PROFIL MAHASISWA
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.deepPurple,
              backgroundImage: AssetImage(
                'assets/images/Foto_Profil.jpeg',
              ),
            ),

            const SizedBox(height: 16),

            // NAMA MAHASISWA
            Text(
              profile.nama,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // NIM
            Text(
              'NIM: ${profile.nim}',
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 5),

            // PROGRAM STUDI
            Text(
              profile.prodi,
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 5),

            // KELAS
            Text(
              'Kelas: ${profile.kelas}',
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            // BIO SINGKAT
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [

                    const Text(
                      'Bio Singkat',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      profile.bio,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // JUDUL INFORMASI KONTAK
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Informasi Kontak',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // EMAIL
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.deepPurple,
                ),
                title: const Text('Email'),
                subtitle: Text(profile.email),
              ),
            ),

            // NOMOR HP
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.deepPurple,
                ),
                title: const Text('Nomor HP'),
                subtitle: Text(profile.hp),
              ),
            ),

            // GITHUB
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.code,
                  color: Colors.deepPurple,
                ),
                title: const Text('GitHub'),
                subtitle: Text(profile.github),
              ),
            ),

            const SizedBox(height: 80),
          ],
        ),
      ),

      // TOMBOL EDIT PROFIL
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _editProfil,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.edit),
        label: const Text('Edit Profil'),
      ),
    );
  }
}
