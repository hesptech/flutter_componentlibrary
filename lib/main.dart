import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_componentlibrary/home_screen.dart';
import 'package:flutter_componentlibrary/presentation/airbnb_home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []); 
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
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: const Text('Infinite Scrolling'),
            ),
          ],
        ),
      ),
    );
  }
}
