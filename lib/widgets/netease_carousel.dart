import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class NeteaseCarousel extends StatelessWidget {

  final Widget child;
  final bool autoplay;
  final int itemCount;
  final IconData iconPrevious;
  final IconData iconNext;
  final double viewportFraction;
  final double scale;

  // final ValueChanged<int> pictureIndex;

  NeteaseCarousel({
    @required this.itemCount,
    @required this.child,
    this.iconPrevious,
    this.iconNext,
    this.autoplay = true,
    this.viewportFraction = 1,
    this.scale = 1,
    // this.pictureIndex
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        autoplay: autoplay,
        outer: false,
        itemBuilder: (BuildContext context, int index) {
          // pictureIndex(index);
          return child;
        },
        itemCount: itemCount,
        viewportFraction: viewportFraction,
        scale: scale,
        fade: 0.8,
        pagination: SwiperPagination(
          builder: SwiperPagination.rect,
        ),
        control: SwiperControl(
          iconPrevious: iconPrevious,
          iconNext: iconNext,
        ),
      ),
    );
  }
}
