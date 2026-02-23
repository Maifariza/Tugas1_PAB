import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../models/cart_model.dart';
import 'cart_page.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  String searchQuery = "";
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    final allProducts = [
      Product(
        id: '1',
        name: 'Laptop Gaming',
        price: 15000000,
        emoji: '💻',
        description: 'Laptop gaming performa tinggi',
        category: 'Electronics',
      ),
      Product(
        id: '2',
        name: 'Smartphone Pro',
        price: 8000000,
        emoji: '📱',
        description: 'Smartphone flagship terbaru',
        category: 'Electronics',
      ),
      Product(
        id: '3',
        name: 'Wireless Headphones',
        price: 1500000,
        emoji: '🎧',
        description: 'Headphones noise-cancelling',
        category: 'Accessories',
      ),
      Product(
        id: '4',
        name: 'Smart Watch',
        price: 3000000,
        emoji: '⌚',
        description: 'Smartwatch dengan health tracking',
        category: 'Wearable',
      ),
      Product(
        id: '5',
        name: 'Camera DSLR',
        price: 12000000,
        emoji: '📷',
        description: 'Kamera DSLR profesional',
        category: 'Photography',
      ),
      Product(
        id: '6',
        name: 'Tablet Pro',
        price: 7000000,
        emoji: '📟',
        description: 'Tablet untuk produktivitas',
        category: 'Electronics',
      ),
    ];

    final categories = [
      "All",
      "Electronics",
      "Accessories",
      "Wearable",
      "Photography"
    ];

    final filteredProducts = allProducts.where((product) {
      final matchSearch = product.name
          .toLowerCase()
          .contains(searchQuery.toLowerCase());

      final matchCategory =
          selectedCategory == "All" ||
          product.category == selectedCategory;

      return matchSearch && matchCategory;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          Consumer<CartModel>(
            builder: (context, cart, child) {
              return Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartPage(),
                        ),
                      );
                    },
                  ),
                  if (cart.itemCount > 0)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                        child: Text(
                          '${cart.itemCount}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: DropdownButtonFormField<String>(
              value: selectedCategory,
              decoration: const InputDecoration(
                labelText: "Category",
                border: OutlineInputBorder(),
              ),
              items: categories.map((c) {
                return DropdownMenuItem(
                  value: c,
                  child: Text(c),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search product...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];

                return Card(
                  elevation: 3,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.deepPurple.shade50,
                          child: Center(
                            child: Text(
                              product.emoji,
                              style:
                                  const TextStyle(fontSize: 64),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(product.name),
                            Text(product.category),
                            Text(
                                'Rp ${product.price.toStringAsFixed(0)}'),
                            ElevatedButton(
                              onPressed: () {
                                context
                                    .read<CartModel>()
                                    .addItem(product);
                              },
                              child: const Text('Add'),
                            ),
                          ],
                        ),
                      ),
                    ],
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