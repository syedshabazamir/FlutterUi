import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Syed Shabaz Amir"),
            accountEmail: Text("syedshabazamir6@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/images/profilephoto.jpg"),
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              // Handle home navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("Favorites"),
            onTap: () {
              // Handle favorites navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              // Handle settings navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              // Handle logout
            },
          ),
        ],
      ),
    );
  }
}
