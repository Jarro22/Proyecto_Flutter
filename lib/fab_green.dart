import 'package:flutter/material.dart';

class FabGreen extends StatefulWidget {
  const FabGreen({super.key});

  @override
  State<FabGreen> createState() => _FabGreenState();
}

class _FabGreenState extends State<FabGreen> {
  IconData _fabIcon = Icons.favorite_border;

  void onPressedFav() {
    setState(() {
      _fabIcon = _fabIcon == Icons.favorite_border
          ? Icons.favorite
          : Icons.favorite_border;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("FAB presionado")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF16db58),
      mini: true,
      tooltip: "Fab",
      onPressed: onPressedFav,
      child: Icon(_fabIcon),
    );
  }
}
