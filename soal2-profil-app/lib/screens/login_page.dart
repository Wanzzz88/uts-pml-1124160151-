
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // Key untuk Form
  final _formKey = GlobalKey<FormState>();

  // Controller input
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Status loading
  bool _isLoading = false;

  // Status tampilan password
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Fungsi login
  Future<void> _login() async {

    // Memeriksa validasi
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Menampilkan loading
    setState(() {
      _isLoading = true;
    });

    // Simulasi proses login
    await Future.delayed(
      const Duration(seconds: 1),
    );

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });

    // Berpindah ke halaman Profil menggunakan Named Route
    Navigator.pushReplacementNamed(
      context,
      '/profile',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),

            child: Form(
              key: _formKey,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Icon aplikasi
                  Icon(
                    Icons.account_circle,
                    size: 90,
                    color: Theme.of(context).colorScheme.primary,
                  ),

                  const SizedBox(height: 16),

                  // Judul aplikasi
                  const Text(
                    'Profil Mahasiswa',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Silakan login untuk melanjutkan',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 35),

                  // Card form login
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(20),

                      child: Column(
                        children: [

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
                              if (value == null ||
                                  value.trim().isEmpty) {
                                return 'Email wajib diisi';
                              }

                              if (!RegExp(
                                r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                              ).hasMatch(value.trim())) {
                                return 'Format email tidak valid';
                              }

                              return null;
                            },
                          ),

                          const SizedBox(height: 20),

                          // Input password
                          TextFormField(
                            controller: _passwordController,
                            obscureText: !_isPasswordVisible,

                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: const Icon(Icons.lock),
                              border: const OutlineInputBorder(),

                              // Tombol tampilkan password
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),

                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible =
                                        !_isPasswordVisible;
                                  });
                                },
                              ),
                            ),

                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty) {
                                return 'Password wajib diisi';
                              }

                              if (value.length < 6) {
                                return 'Password minimal 6 karakter';
                              }

                              return null;
                            },
                          ),

                          const SizedBox(height: 25),

                          // Tombol Login
                          SizedBox(
                            width: double.infinity,
                            height: 50,

                            child: ElevatedButton(
                              onPressed:
                                  _isLoading ? null : _login,

                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context)
                                        .colorScheme.primary,

                                foregroundColor:
                                    Theme.of(context)
                                        .colorScheme.onPrimary,
                              ),

                              child: _isLoading
                                  ? const SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 3,
                                      ),
                                    )
                                  : const Text(
                                      'LOGIN',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Aplikasi Profil Mahasiswa',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
