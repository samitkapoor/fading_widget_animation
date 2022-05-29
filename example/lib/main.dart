import 'package:flutter/material.dart';
//simply import the package in the screen you want to use the widget inside
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
            //just call the class where ever you would like to use the animation
            FadingWidgetAnimator(
              //duration is optional, defaults to 2 seconds
              duration: const Duration(seconds: 4),
              //child is marked as required, that means the widget will fail if you don't pass the child
              child: const Text(
                'ta-daaaa!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // rest of the arguments are also optional
              // curve: Curves.linear,
              // startAfter lets you control the time after which you want to start the animation
              // you can see a better example of this parameter in the below widget
              // startAfter: const Duration(seconds: 0),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // a simple method to make dots
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(
                      seconds: 1), //this dot will load after 1 second
                  color: Colors.purple,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(
                      seconds: 2), //this dot will load after 2 seconds
                  color: Colors.indigo,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(
                      seconds: 3), //this dot will load after 3 seconds
                  color: Colors.green,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(
                      seconds: 4), //this dot will load after 4 seconds
                  color: Colors.yellow,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(
                      seconds: 5), //this dot will load after 5 seconds
                  color: Colors.orange,
                ),
                const SizedBox(width: 5),
                buildDots(
                  duration: const Duration(seconds: 3),
                  startAfter: const Duration(
                      seconds: 6), //this dot will load after 6 seconds
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
