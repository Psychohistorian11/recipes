import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildActionButton(
                Icons.call,
                const Color.fromARGB(255, 56, 60, 137),
                'Call',
              ),
              _buildActionButton(
                Icons.location_on,
                const Color.fromARGB(255, 57, 50, 160),
                'Remove',
              ),
              _buildActionButton(
                Icons.share,
                const Color.fromARGB(255, 78, 47, 151),
                'Share',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, Color color, String actionText) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(icon, color: color, size: 70),
        Text(
          actionText,
          style: TextStyle(color: const Color.fromARGB(255, 58, 102, 8)),
        ),
      ],
    );
  }
}
