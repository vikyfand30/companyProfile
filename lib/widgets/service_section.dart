import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Our Services',
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16.0),
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: List.generate(3, (index) => _buildServiceCard(index)),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(int index) {
    return Card(
      elevation: 4,
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.build, size: 48, color: Colors.blue),
            const SizedBox(height: 8),
            Text('Service ${index + 1}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            const Text('Description of the service goes here.',
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
