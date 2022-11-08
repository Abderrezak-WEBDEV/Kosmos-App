import 'Package:flutter/material.dart';

class Camera extends StatelessWidget {
  
  final imageUrl = "";
  // co({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Télécharger image"),
      )
    );
  }
}
