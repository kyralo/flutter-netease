import 'package:flutter/material.dart';

/// Flutter code sample for RotationTransition

// The following code implements the [RotationTransition] as seen in the video
// above:

/// This is the stateful widget that the main application instantiates.
class HelloAnimation extends StatefulWidget {
  HelloAnimation({Key key}) : super(key: key);

  @override
  _HelloAnimationState createState() => _HelloAnimationState();
}

/// This is the private State class that goes with HelloAnimation.
/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _HelloAnimationState extends State<HelloAnimation>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.all(Radius.circular(90)),
              border: Border.all(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Color.fromRGBO(235, 235, 235, 1)),
            ),
            child: Card(
              color: Color.fromRGBO(255, 255, 255, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(90)),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                'http://p4.music.126.net/sBW5UDPex60BtCkGqyyVUA==/109951163298179330.jpg?param=30y30',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

