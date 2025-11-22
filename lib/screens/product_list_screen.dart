// lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import 'product_detail_screen.dart'; // Import layar tujuan

class ProductListScreen extends StatelessWidget {
  final Category selectedCategory;

  const ProductListScreen({
    super.key,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    // Filter produk berdasarkan kategori
    final categoryProducts = DUMMY_PRODUCTS
        .where((prod) => prod.category.id == selectedCategory.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategory.name), // TITLE: "[Nama Kategori]"
        backgroundColor: Colors.redAccent,
      ),
      body: Column( // UI: Column
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Semua Produk ${selectedCategory.name}', // Text (title)
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder( // Grid (2 kolom)
              padding: const EdgeInsets.all(10),
              itemCount: categoryProducts.length,
              // Delegate untuk mengatur layout grid (2 kolom)
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 kolom
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75, // Mengatur rasio agar card tidak terlalu lebar
              ),
              itemBuilder: (context, index) {
                final product = categoryProducts[index];
                return InkWell(
                  onTap: () {
                    // onTap Card (product): NAVIGATE TO ProductDetailScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(
                          product: product,
                        ),
                      ),
                    );
                  },
                  child: Card( // Card (icon + label + price)
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Center(
                            child: Icon(product.icon, size: 80, color: Colors.grey[700]), // Ikon produk
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            product.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(
                            'Rp ${product.price.toStringAsFixed(0)}', // Harga
                            style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}