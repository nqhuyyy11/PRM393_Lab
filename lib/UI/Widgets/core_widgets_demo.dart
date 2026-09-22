import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '1. Container Demo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text(
              'Container with decoration & padding',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '2. Row & Column Demo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.star, color: Colors.amber, size: 36),
              Icon(Icons.favorite, color: Colors.red, size: 36),
              Icon(Icons.thumb_up, color: Colors.blue, size: 36),
            ],
          ),
        ],
      ),
    );
  }
}
