import 'package:flutter/material.dart';
import 'package:product_6/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.indigoAccent.shade400),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
