import 'package:flutter/material.dart';

class NavebarView extends StatefulWidget {
  const NavebarView({super.key});

  @override
  State<NavebarView> createState() => _NavebarViewState();
}

class _NavebarViewState extends State<NavebarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('navbar'),
    );
  }
}
