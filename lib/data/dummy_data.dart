import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/product.dart';

// --- Kategori Dummy ---
const DUMMY_CATEGORIES = [
  Category(id: 'c1', name: 'Smartphone', icon: Icons.phone_android),
  Category(id: 'c2', name: 'Laptop', icon: Icons.laptop_chromebook),
  Category(id: 'c3', name: 'Smartwatch', icon: Icons.watch),
];

// --- Produk Dummy ---
final DUMMY_PRODUCTS = [

  Product(id: 'p1', name: 'Samsung S25', icon: Icons.phone_android, price: 4500.0, category: DUMMY_CATEGORIES[0]),
  Product(id: 'p2', name: 'Iphone 16', icon: Icons.phone_iphone_outlined, price: 5000.0, category: DUMMY_CATEGORIES[0]),
  Product(id: 'p3', name: 'Garmin', icon: Icons.watch, price: 1000.0, category: DUMMY_CATEGORIES[2]),
  Product(id: 'p4', name: 'Asus Vivobook', icon: Icons.headphones, price: 5000.0, category: DUMMY_CATEGORIES[1]),
  Product(id: 'p5', name: 'Apple Watch', icon: Icons.watch, price: 2000.0, category: DUMMY_CATEGORIES[2]),
];