
import 'package:flutter/material.dart';
import '../models/profile.dart';
import 'edit_profile_page.dart';

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

  // Fungsi untuk membuka halaman Edit Profil
  Future<void> _editProfil() async {

    final dataBaru = await Navigator.push<Profile>(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfilePage(
          profile: profile,
        ),
      ),
    );

    // Memperbarui data setelah pengguna menekan Simpan
    if (dataBaru != null) {
      setState(() {
        profile = dataBaru;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // AppBar
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      // Isi halaman profil
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            // Avatar mahasiswa tanpa foto
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person,
                size: 65,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 16),

            // Nama mahasiswa
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
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 5),

            // Program studi
            Text(
              profile.prodi,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 5),

            // Kelas
            Text(
              'Kelas: ${profile.kelas}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            // Card tentang saya
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  children: [

                    const Text(
                      'Tentang Saya',
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

            // Judul informasi kontak
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

            // Card email
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

            // Card nomor HP
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

            // Card GitHub
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

            const SizedBox(height: 70),
          ],
        ),
      ),

      // Tombol Edit Profil
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
