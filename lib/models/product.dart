// lib/models/product.dart
import 'package:flutter/material.dart';
import 'category.dart';

class Product {
  final String id;
  final String name;
  final IconData icon; // Ikon sebagai placeholder untuk gambar
  final double price;
  final Category category;

  const Product({
    required this.id,
    required this.name,
    required this.icon,
    required this.price,
    required this.category,
  });
}