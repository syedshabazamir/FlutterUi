import 'package:flutter/material.dart';
import 'package:practise_app/products.dart'; // Ensure correct import

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {
                print("Hello");
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 10, top: 10),
            child: CircleAvatar(
              radius: 20, // Reduce size to prevent overflow
              backgroundImage: NetworkImage(
                "https://tse3.mm.bing.net/th?id=OIP.S8IBjyi8BerWc2MUb-S7LQHaEo&pid=Api&P=0&h=220",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search here...",
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.blue, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Image Container
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/containerimage.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Row with 4 Elevated Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("All pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(179, 255, 153, 0),
                      foregroundColor: Colors.white, // Ensure text is visible
                    ),
                    child: const Text("All"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Popular pressed");
                    },
                    child: const Text("Popular"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("New pressed");
                    },
                    child: const Text("New"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Favorites pressed");
                    },
                    child: const Text("Favorites"),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Products GridView (Ensure it's properly implemented)
              Container(
                // Give it a defined height
                child: Products(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart,
                  color: Color.fromARGB(166, 255, 153, 0)),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.home,
                  color: Color.fromARGB(172, 255, 153, 0)),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person,
                  color: Color.fromARGB(188, 255, 153, 0)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
