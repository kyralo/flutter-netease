import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class NavbarProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _index = 0;

  int get index => _index;

  void change(int val) {
    _index = val;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('index', index));
  }
}