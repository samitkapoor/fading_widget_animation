import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FadingWidgetAnimatior extends StatefulWidget {
  FadingWidgetAnimatior({
    required this.child,
    this.duration = const Duration(seconds: 2),
    this.curve = Curves.linear,
    super.key,
  });

  //child that we want to animate
  Widget child;

  //duration of the fade animation
  Duration duration;

  //curve of the animation
  Curve curve;

  @override
  State<FadingWidgetAnimatior> createState() => _FadingWidgetAnimatiorState();
}

class _FadingWidgetAnimatiorState extends State<FadingWidgetAnimatior>
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
    animationController?.forward();
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
