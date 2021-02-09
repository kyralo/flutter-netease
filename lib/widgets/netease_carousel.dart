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

  final pictureIndex;

  NeteaseCarousel({
    @required this.itemCount,
    @required this.child,
    this.iconPrevious,
    this.iconNext,
    this.autoplay = true,
    this.viewportFraction = 1,
    this.scale = 1,
    this.pictureIndex
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        autoplay: autoplay,
        autoplayDelay: 4000,
        outer: false,
        itemBuilder: (BuildContext context, int index) {
          if(pictureIndex != null){
            pictureIndex(index, 4000);
          }
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
        duration: 500,
        autoplayDisableOnInteraction: true,
      ),
    );
  }
}

//
// class NeteaseCarousel extends StatefulWidget {
//   final Widget child;
//   final bool autoplay;
//   final int itemCount;
//   final IconData iconPrevious;
//   final IconData iconNext;
//   final double viewportFraction;
//   final double scale;
//
//   final pictureIndex;
//
//   NeteaseCarousel({
//     @required this.itemCount,
//     @required this.child,
//     this.iconPrevious,
//     this.iconNext,
//     this.autoplay = true,
//     this.viewportFraction = 1,
//     this.scale = 1,
//     this.pictureIndex
//   });
//   @override
//   _NeteaseCarouselState createState() => _NeteaseCarouselState();
// }
//
// class _NeteaseCarouselState extends State<NeteaseCarousel> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Swiper(
//         autoplay: widget.autoplay,
//         autoplayDelay: 4000,
//         outer: false,
//         itemBuilder: (BuildContext context, int index) {
//           if(widget.pictureIndex != null){
//               widget.pictureIndex(index, 4000);
//           }
//           return widget.child;
//         },
//         itemCount: widget.itemCount,
//         viewportFraction: widget.viewportFraction,
//         scale: widget.scale,
//         fade: 0.8,
//         pagination: SwiperPagination(
//           builder: SwiperPagination.rect,
//         ),
//         control: SwiperControl(
//           iconPrevious: widget.iconPrevious,
//           iconNext: widget.iconNext,
//         ),
//         duration: 500,
//         autoplayDisableOnInteraction: true,
//       ),
//     );
//   }
//
//   Widget _swiperBuilder(BuildContext context, int index) {
//     return (Image.network(
//       "http://via.placeholder.com/350x150",
//       fit: BoxFit.fill,
//     ));
//   }
// }
