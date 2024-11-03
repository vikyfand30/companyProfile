import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Contact Us', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
                labelText: 'Your Name', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 8.0),
          const TextField(
            decoration: InputDecoration(
                labelText: 'Your Email', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 8.0),
          const TextField(
            maxLines: 4,
            decoration: InputDecoration(
                labelText: 'Your Message', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(onPressed: () {}, child: const Text('Send Message')),
        ],
      ),
    );
  }
}
