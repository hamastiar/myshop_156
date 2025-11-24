import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final double price;
  final IconData icon; // Menggunakan IconData sebagai pengganti gambar sederhana

  Product({required this.id, required this.name, required this.price, required this.icon});
}

class Category {
  final String name;
  final IconData icon;
  final List<Product> products;

  Category({required this.name, required this.icon, required this.products});
}

// Data Dummy
final List<Category> dummyCategories = [
  Category(
    name: "Makanan",
    icon: Icons.fastfood,
    products: [
      Product(id: 'm1', name: "Burger Keju", price: 35000.0, icon: Icons.lunch_dining),
      Product(id: 'm2', name: "Salad Sayur", price: 28000.0, icon: Icons.local_florist),
    ],
  ),
  Category(
    name: "Minuman",
    icon: Icons.local_drink,
    products: [
      Product(id: 'n1', name: "Kopi Latte", price: 25000.0, icon: Icons.coffee),
      Product(id: 'n2', name: "Jus Jeruk", price: 18000.0, icon: Icons.water_drop),
    ],
  ),
  Category(
    name: "Elektronik",
    icon: Icons.devices_other,
    products: [
      Product(id: 'e1', name: "Headphone", price: 450000.0, icon: Icons.headset),
      Product(id: 'e2', name: "Smartwatch", price: 1200000.0, icon: Icons.watch),
      Product(id: 'e3', name: "Mouse Gaming", price: 220000.0, icon: Icons.mouse),
    ],
  ),
];