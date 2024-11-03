import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Our Portfolio',
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16.0),
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: List.generate(4, (index) => _buildPortfolioItem(index)),
          ),
        ],
      ),
    );
  }

  Widget _buildPortfolioItem(int index) {
    return Card(
      elevation: 4,
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.image, size: 48, color: Colors.blue.shade300),
            const SizedBox(height: 8),
            Text('Project ${index + 1}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            const Text('Description of the project goes here.',
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
