import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Profile Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(data),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("go back"))
          ],
        ),
      ),
    );
  }
}