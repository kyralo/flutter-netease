import 'package:flutter/cupertino.dart';
import 'package:netease/widgets/suit_text.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SuitText('something'),
    );
  }
}
