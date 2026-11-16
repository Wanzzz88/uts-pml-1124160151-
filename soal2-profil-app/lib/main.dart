
import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'models/profile.dart';
import 'screens/login_page.dart';
import 'screens/profile_page.dart';
import 'screens/edit_profile_page.dart';
import 'screens/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: appThemeMode,

      builder: (context, currentMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Profil Ridwan',

          // Tema terang
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.light,
            ),
            useMaterial3: true,
          ),

          // Tema gelap
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),

          // Mengatur tema aktif
          themeMode: currentMode,

          // Halaman pertama aplikasi
          initialRoute: '/login',

          // Daftar Named Routes
          routes: {
            '/login': (context) => const LoginPage(),
            '/profile': (context) => const ProfilePage(),
            '/about': (context) => const AboutPage(),
          },

          // Route untuk Edit Profil yang membutuhkan data Profile
          onGenerateRoute: (settings) {
            if (settings.name == '/edit-profile') {
              final arguments = settings.arguments;

              if (arguments is Profile) {
                return MaterialPageRoute<Profile>(
                  settings: settings,
                  builder: (context) {
                    return EditProfilePage(
                      profile: arguments,
                    );
                  },
                );
              }
            }

            return null;
          },
        );
      },
    );
  }
}
