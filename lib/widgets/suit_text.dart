import 'package:flutter/material.dart';

class SuitText extends StatelessWidget {

  String _txt;
  double _fontSize;
  Color _color;
  FontWeight _fontWeight;
  TextAlign _textAlign;
  BoxBorder _border;
  double _width;
  double _height;
  int _maxLines;
  AlignmentDirectional _alignment;

  SuitText(String txt, {
    double fontSize = 28,
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.black,
    TextAlign textAlign,
    BoxBorder border,
    double width,
    double height,
    int maxLines = 2,
    AlignmentDirectional alignment = AlignmentDirectional.center,
  }){
    this._txt = txt;
    this._fontSize = fontSize;
    this._fontWeight = fontWeight;
    this._color = color;
    this._textAlign = textAlign;
    this._border = border;
    this._width = width;
    this._height = height;
    this._alignment = alignment;
    this._maxLines = maxLines;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      alignment: _alignment,
      decoration: BoxDecoration(
        border: _border
      ),
      child: Text(_txt,
        overflow: TextOverflow.ellipsis,
        textAlign: _textAlign,
        maxLines: _maxLines,
        style: TextStyle(
          decoration: TextDecoration.none,
          color: _color,
          fontSize: _fontSize,
          fontWeight: _fontWeight,
        ),
      ),
    );
  }
}
