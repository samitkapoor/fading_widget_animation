import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FadingWidgetAnimator extends StatefulWidget {
  //child widget is the only required parameter,
  //rest of the parameters can be passed as per the choice of developer
  //default value for duration is 2 seconds
  //default value for startAfter is 0 seconds i.e. the animation will trigger as soon as the screen loads
  //default curve is linear
  FadingWidgetAnimator({
    required this.child,
    this.duration = const Duration(seconds: 2),
    this.startAfter = const Duration(seconds: 0),
    this.curve = Curves.linear,
    super.key,
  });

  //child that you want to animate
  Widget child;

  //duration between the widget being fully invisible to fully opaque
  Duration duration;

  //the animation will trigger after this much duration
  Duration startAfter;

  //curve of the animation
  Curve curve;

  @override
  State<FadingWidgetAnimator> createState() => _FadingWidgetAnimatorState();
}

class _FadingWidgetAnimatorState extends State<FadingWidgetAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: widget.duration);
    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: animationController!, curve: widget.curve),
    );
    Future.delayed(widget.startAfter).then((value) {
      animationController?.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (context, child) {
        return Opacity(opacity: animation!.value, child: child);
      },
      child: widget.child,
    );
  }
}
