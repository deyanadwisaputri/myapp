import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int followers = 5480;

  void tambahFollower() {
    setState(() {
      followers++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 50, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            const Text(
              "Deyana Dwi Saputri",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text("UI / UX Designer"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: tambahFollower,
              child: const Text("Follow"),
            ),
            const SizedBox(height: 20),
            Text(
              "$followers Followers",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
