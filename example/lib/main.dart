import 'package:flutter/material.dart';
import 'package:fading_widget_animation/fading_widget_animation.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PackageUse(),
    );
  }
}

class PackageUse extends StatelessWidget {
  const PackageUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadingWidgetAnimatior(
          child: const Text(
            'Wow I am Fading!',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
