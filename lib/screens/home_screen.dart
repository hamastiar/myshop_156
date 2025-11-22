// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import 'product_list_screen.dart'; // Import layar tujuan

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop Mini'), // TITLE: "MyShop Mini"
        backgroundColor: Colors.red,
      ),
      body: Column( // UI: Column
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Pilih Kategori', // Text (title)
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Row of 3 Card (kategori)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: DUMMY_CATEGORIES.map((cat) {
              return Expanded( // Memastikan 3 Card memiliki lebar yang sama
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell( // Menggunakan InkWell untuk onTap
                    onTap: () {
                      // onTap Card (kategori): NAVIGATE TO ProductListScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductListScreen(
                            selectedCategory: cat,
                          ),
                        ),
                      );
                    },
                    child: Card( // Card has: icon + label
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(cat.icon, size: 40, color: Colors.red),
                            const SizedBox(height: 8),
                            Text(cat.name, textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}