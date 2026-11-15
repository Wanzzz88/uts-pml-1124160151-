
import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;

  const EditProfilePage({
    super.key,
    required this.profile,
  });

  @override
  State<EditProfilePage> createState() =>
      _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

  final _formKey = GlobalKey<FormState>();

  // Controller untuk mengambil dan mengisi data profil
  late TextEditingController _namaController;
  late TextEditingController _nimController;
  late TextEditingController _prodiController;
  late TextEditingController _kelasController;
  late TextEditingController _bioController;
  late TextEditingController _emailController;
  late TextEditingController _hpController;
  late TextEditingController _githubController;

  @override
  void initState() {
    super.initState();

    // Mengisi input dengan data profil sebelumnya
    _namaController =
        TextEditingController(text: widget.profile.nama);

    _nimController =
        TextEditingController(text: widget.profile.nim);

    _prodiController =
        TextEditingController(text: widget.profile.prodi);

    _kelasController =
        TextEditingController(text: widget.profile.kelas);

    _bioController =
        TextEditingController(text: widget.profile.bio);

    _emailController =
        TextEditingController(text: widget.profile.email);

    _hpController =
        TextEditingController(text: widget.profile.hp);

    _githubController =
        TextEditingController(text: widget.profile.github);
  }

  @override
  void dispose() {
    _namaController.dispose();
    _nimController.dispose();
    _prodiController.dispose();
    _kelasController.dispose();
    _bioController.dispose();
    _emailController.dispose();
    _hpController.dispose();
    _githubController.dispose();

    super.dispose();
  }

  // Fungsi untuk menyimpan perubahan profil
  void _simpanProfil() {

    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Membuat data profil baru
    final dataBaru = Profile(
      nama: _namaController.text.trim(),
      nim: _nimController.text.trim(),
      prodi: _prodiController.text.trim(),
      kelas: _kelasController.text.trim(),
      bio: _bioController.text.trim(),
      email: _emailController.text.trim(),
      hp: _hpController.text.trim(),
      github: _githubController.text.trim(),
    );

    // Mengirim data baru ke halaman sebelumnya
    Navigator.pop(context, dataBaru);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profil'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [

              // Input nama
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama wajib diisi';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Input NIM
              TextFormField(
                controller: _nimController,
                decoration: const InputDecoration(
                  labelText: 'NIM',
                  prefixIcon: Icon(Icons.badge),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Input program studi
              TextFormField(
                controller: _prodiController,
                decoration: const InputDecoration(
                  labelText: 'Program Studi',
                  prefixIcon: Icon(Icons.school),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Input kelas
              TextFormField(
                controller: _kelasController,
                decoration: const InputDecoration(
                  labelText: 'Kelas',
                  prefixIcon: Icon(Icons.class_),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Input bio
              TextFormField(
                controller: _bioController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Bio Singkat',
                  prefixIcon: Icon(Icons.description),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Input email
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Email wajib diisi';
                  }

                  if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$')
                      .hasMatch(value.trim())) {
                    return 'Format email tidak valid';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Input nomor HP
              TextFormField(
                controller: _hpController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Nomor HP',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nomor HP wajib diisi';
                  }

                  if (!RegExp(r'^[0-9]{10,13}$')
                      .hasMatch(value.trim())) {
                    return 'Nomor HP harus 10-13 digit angka';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Input GitHub
              TextFormField(
                controller: _githubController,
                decoration: const InputDecoration(
                  labelText: 'Akun GitHub',
                  prefixIcon: Icon(Icons.code),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25),

              // Tombol simpan
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: _simpanProfil,
                  icon: const Icon(Icons.save),
                  label: const Text(
                    'Simpan Perubahan',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
