import 'package:flutter/material.dart';
import 'package:kali2025/controllers/navigation_controller.dart';
import 'package:kali2025/pages/landing_page.dart';
import 'package:kali2025/theme.dart';
import 'package:watch_it/watch_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.registerSingleton<NavigationController>(NavigationController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kali.nyc',
      theme: KaliTheme.themeData,
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}
