import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class FacadeProvider with ChangeNotifier, DiagnosticableTreeMixin {
  List<String> _pictures = [
    'lib/assets/image/carousel-1.png',
    'lib/assets/image/carousel-2.jpg',
  ];

  List<String> get pictures => _pictures;

  void changePictures(List<String> pictureArr){
    _pictures = pictureArr;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty('pictures', pictures));
  }
}