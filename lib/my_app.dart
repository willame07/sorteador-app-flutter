import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue,
      textTheme: GoogleFonts.abelTextTheme()),
      home: HomePage(),
    );
  }
}