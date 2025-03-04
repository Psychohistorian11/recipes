import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.8),
      child: Column(
        children: [
          _buildAvatarInfo(),
          SizedBox(height: 12.0),
          _buildRecipeImage(),
        ],
      ),
    );
  }

  Widget _buildAvatarInfo() {
    return Row(
      children: [
        SizedBox(
          height: 42.0,
          width: 42.0,
          child: Image.network('https://via.placeholder.com/150'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('hola'),
        ),
      ],
    );
  }

  Widget _buildRecipeImage() {
    return Expanded(
      child: SizedBox(
        height: 50.0,
        child: Image.network(
          fit: BoxFit.cover,
          'https://via.placeholder.com/150',
        ),
      ),
    );
  }
}
