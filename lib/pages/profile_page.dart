import 'package:astron/core/constants.dart';
import 'package:astron/core/notifiers.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/black-hole.png"),
            radius: 60,
          ),
          SizedBox(height: KDOUBLE20),
          ListTile(leading: Icon(Icons.person), title: Text("Name")),
          ListTile(leading: Icon(Icons.email), title: Text("E-mail")),
          ListTile(leading: Icon(Icons.web), title: Text("Site")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
