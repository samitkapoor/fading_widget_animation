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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadingWidgetAnimator(
              duration: const Duration(seconds: 4),
              child: const Text(
                'ta-daaaa!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(seconds: 1),
                  color: Colors.purple,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(seconds: 2),
                  color: Colors.indigo,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(seconds: 3),
                  color: Colors.green,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(seconds: 4),
                  color: Colors.yellow,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(seconds: 5),
                  color: Colors.orange,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(seconds: 6),
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  FadingWidgetAnimator buildDots({
    required Duration duration,
    required Duration startAfter,
    required Color color,
  }) {
    return FadingWidgetAnimator(
      duration: duration,
      startAfter: startAfter,
      child: CircleAvatar(
        radius: 15,
        backgroundColor: color,
      ),
    );
  }
}
