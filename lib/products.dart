import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Products({super.key});

  final List<Map<String, String>> productsData = [
    {
      "product": "Product 1",
      "price": "250 Rs",
      "image": "assets/images/product1.jpg"
    },
    {
      "product": "Product 2",
      "price": "350 Rs",
      "image": "assets/images/product2.jpg"
    },
    {
      "product": "Product 3",
      "price": "500 Rs",
      "image": "assets/images/product3.jpg"
    },
    {
      "product": "Product 4",
      "price": "750 Rs",
      "image": "assets/images/product4.jpg"
    },
    {
      "product": "Product 5",
      "price": "800 Rs",
      "image": "assets/images/product5.jpg"
    },
    {
      "product": "Product 6",
      "price": "1000 Rs",
      "image": "assets/images/product6.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true, // Ensures GridView doesn't take infinite space
            physics:
                const NeverScrollableScrollPhysics(), // Disables GridView's own scrolling
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.8,
            ),
            itemCount: productsData.length,
            itemBuilder: (context, index) {
              final product = productsData[index];
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(10)),
                        child: Image.asset(
                          product["image"]!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            product["product"]!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            product["price"]!,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                          const SizedBox(height: 10),
                          const Icon(
                            Icons.shopping_cart,
                            size: 24,
                            color: Color.fromARGB(204, 255, 153, 0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
