import 'package:flutter/material.dart';

import 'package:netease/common/extension/num_fit.dart';

class SpinAvatar extends StatefulWidget {

  Duration duration;
  @required Image image;

  SpinAvatar(this.image, {this.duration = const Duration(seconds: 5)});

  @override
  _SpinAvatarState createState() => _SpinAvatarState(duration, image);
}

class _SpinAvatarState extends State<SpinAvatar>
    with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation<double> _animation;
  Duration _duration;
  Image _image;

  _SpinAvatarState(this._duration, this._image);

  @override
  void initState() {

    double count = _duration.inSeconds / 5;

    _controller = AnimationController(
        duration: Duration(seconds: 5),
        vsync: this
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RotationTransition(
        turns: _animation,
        child: Container(
          width: 50.rpx,
          height: 50.rpx,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(90)),
            border: Border.all(
                width: 2.rpx,
                style: BorderStyle.solid,
                color: Color.fromRGBO(235, 235, 235, 1)),
          ),
          child: Card(
            color: Color.fromRGBO(255, 255, 255, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(90)),
            clipBehavior: Clip.antiAlias,
            child: _image,
          ),
        ),
      ),
    );
  }
}
