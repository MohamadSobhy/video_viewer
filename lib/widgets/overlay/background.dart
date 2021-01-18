import 'package:flutter/material.dart';
import 'package:video_viewer/utils/provider.dart';

enum Direction { bottom, top }

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    Key key,
    this.child,
    this.direction = Direction.bottom,
  }) : super(key: key);

  final Widget child;
  final Direction direction;

  @override
  Widget build(BuildContext context) {
    final style = getVideoStyle(context);
    List<Color> colors = [
      Colors.transparent,
      style.progressBarStyle.backgroundColor,
    ];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:
              direction == Direction.bottom ? colors : colors.reversed.toList(),
        ),
      ),
      child: child,
    );
  }
}