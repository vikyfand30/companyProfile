import 'package:company_example/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CompanyProfileApp());
}

class CompanyProfileApp extends StatelessWidget {
  const CompanyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company Profile',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
