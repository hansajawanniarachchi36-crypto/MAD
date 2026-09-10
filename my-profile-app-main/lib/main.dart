import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // Keeps the DEBUG banner
      title: 'My Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Light grey background matching the image
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'My Profile', 
          style: TextStyle(color: Colors.white)
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Avatar and Checkmark Badge
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.grey[300],
                      // Placeholder icon for the profile picture
                      child: const Icon(Icons.person, size: 60, color: Colors.black54),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Divider line
            const Divider(color: Colors.black, thickness: 1),
            const SizedBox(height: 20),
            
            // Name Section
            const Text('Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 5),
            const Text('Diluka', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            
            // Email Section
            const Text('Email', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 5),
            Row(
              children: const [
                Icon(Icons.email, size: 18),
                SizedBox(width: 8),
                Text('diluka.w@nsbm.ac.lk', style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),
            
            // Points Section
            const Text('Points', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 5),
            Row(
              children: const [
                Icon(Icons.star, size: 18),
                SizedBox(width: 8),
                Text('0', style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
      // Bottom Right + Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}