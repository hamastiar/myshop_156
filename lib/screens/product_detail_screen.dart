// lib/screens/product_detail_screen.dart
import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.red,
        // Tombol Back (OnTap back) disediakan oleh Flutter secara default
      ),
      body: Center( // UI: Column (centered)
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon (product.icon)
            Icon(
              product.icon,
              size: 150,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            // Text (product.name)
            Text(
              product.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Text (product.price)
            Text(
              'Harga: Rp ${product.price.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 22, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}