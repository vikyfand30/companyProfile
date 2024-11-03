import 'package:company_example/widgets/contact_section.dart';
import 'package:company_example/widgets/footer.dart';
import 'package:company_example/widgets/header.dart';
import 'package:company_example/widgets/portofolio_section.dart';
import 'package:company_example/widgets/service_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _portfolioKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final RenderBox renderBox =
        key.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero).dy;
    _scrollController.animateTo(
      offset + _scrollController.offset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Header(
                onMenuTap: _scrollToSection,
                servicesKey: _servicesKey,
                portfolioKey: _portfolioKey,
                contactKey: _contactKey),
            ServicesSection(key: _servicesKey),
            PortfolioSection(key: _portfolioKey),
            ContactSection(key: _contactKey),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
