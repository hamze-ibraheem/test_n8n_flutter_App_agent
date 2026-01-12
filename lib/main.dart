import 'package:flutter/material.dart';
// Ensure this import matches your actual project structure
import 'widgets/profile_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Light background to make the card pop
      appBar: AppBar(
        title: const Text('User Dashboard'),
        centerTitle: true,
      ),
      body: Center(
        child: UserProfileCard(
          userName: "Hamza Ibrahim",
          userEmail: "hamza.dev@example.com",
          // Uncomment line below to test with a real image
          // avatarUrl: "https://i.pravatar.cc/150?u=hamza",
          onEditPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Edit button clicked!")),
            );
          },
        ),
      ),
    );
  }
}