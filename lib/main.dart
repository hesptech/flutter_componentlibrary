import 'package:flutter/material.dart';
import 'package:flutter_componentlibrary/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeLauncher(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeLauncher extends StatelessWidget {
  const HomeLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Morphism Ui'),
            ),
          ],
        ),
      ),
    );
  }
}
