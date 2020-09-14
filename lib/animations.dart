import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  final String direction;

  FadeAnimation(this.delay, this.direction, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity").add(
          Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      if(direction == 'LX')
        Track("translateX").add(
            Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
            curve: Curves.easeOut),
      if(direction == 'LY')
        Track("translateY").add(
            Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
            curve: Curves.easeOut),
      if(direction == 'RX')
        Track("translateX").add(
            Duration(milliseconds: 500), Tween(begin: 30.0, end: 0.0),
            curve: Curves.easeOut),
      if(direction == 'RY')
        Track("translateY").add(
            Duration(milliseconds: 500), Tween(begin: 30.0, end: 0.0),
            curve: Curves.easeOut),

    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) =>
          Opacity(
            opacity: animation["opacity"],
            child: Transform.translate(
              child: child,
              offset:
              direction == 'LX' ?
              Offset(0, animation["translateX"])
                  :
              direction == 'RX' ?
              Offset(0, animation["translateX"])
                  :
              direction == 'RY' ?
              Offset(0, animation["translateY"])
                  :
              Offset(0, animation["translateY"]),

//            direction == 'T' ?  Offset(0, animation["translateY"]):
//            Offset(0, animation["translateX"]),

            ),
          ),
    );
  }
}