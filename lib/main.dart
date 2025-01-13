import 'package:flutter/material.dart';
import 'package:simplemapapp/src/presentation/views/map_implementation_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Map App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF6F6F7),
        primaryColor: Colors.green,
        brightness: Brightness.light,
        useMaterial3: false,
        fontFamily: 'Inter',
      ),
      home: MapImplementationScreen(),
    );
  }
}
