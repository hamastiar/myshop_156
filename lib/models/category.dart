import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final IconData icon; // Menggunakan IconData untuk ikon Flutter

  const Category({
    required this.id,
    required this.name,
    required this.icon,
  });
}