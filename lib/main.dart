// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyShopMiniApp());
}

class MyShopMiniApp extends StatelessWidget {
  const MyShopMiniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop Mini',
      theme: ThemeData(
        primarySwatch: Colors.red, // Mengubah warna utama
        brightness: Brightness.light, // Menetapkan tema terang
      ),
      // APP START: show HomeScreen
      home: const HomeScreen(),
    );
  }
}