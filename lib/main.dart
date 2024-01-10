import 'package:dice/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    // ignore: prefer_const_constructors
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: GradientContainer(
          colors: [Colors.indigo, Colors.indigoAccent],
          // GradientContainer.purple()
        ),
      ),
    ),
  );
}
