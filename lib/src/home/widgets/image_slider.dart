// import 'package:ecommerce_application_1/src/constants.dart';
// import 'package:flutter/material.dart';

// class ImageSliderScreen extends StatefulWidget {
//   final Function(int) onChange;
//   final int currentSlide;
//   const ImageSliderScreen({
//     super.key,
//     required this.onChange,
//     required this.currentSlide,
//   });

//   @override
//   State<ImageSliderScreen> createState() => _ImageSliderScreenState();
// }

// class _ImageSliderScreenState extends State<ImageSliderScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SizedBox(
//           height: 168,
//           width: double.infinity,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: PageView(
              
//               scrollDirection: Axis.horizontal,
//               allowImplicitScrolling: true,
//               onPageChanged: widget.onChange,
//               physics: ClampingScrollPhysics(),
//               children: [
//                 Image.asset(
//                   "assets/img/slider8.jpg",
//                   fit: BoxFit.cover,
//                 ),
//                 Image.asset(
//                   "assets/img/slider7.avif",
//                   fit: BoxFit.cover,
//                 ),
//                 Image.asset(
//                   "assets/img/slider6.jpg",
//                   fit: BoxFit.cover,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Positioned.fill(
//           bottom: 10,
//             child: Align(
//           alignment: Alignment.bottomCenter,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//                 3,
//                 (index) => AnimatedContainer(
                  
//                       duration: Duration(microseconds: 300),
//                       width:widget.currentSlide == index ? 15:8,
//                       height: 8,
//                       margin: EdgeInsets.only(right: 3),
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
//                       color: widget.currentSlide == index ? Colors.deepOrange:Colors.transparent,
//                       border: Border.all(color: primaryclr)
//                       ),
//                     )),
//           ),
//         ))
//       ],
//     );
//   }
// }

import 'dart:async';
import 'package:ecommerce_application_1/src/constants.dart';
import 'package:flutter/material.dart';

class ImageSliderScreen extends StatefulWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ImageSliderScreen({
    super.key,
    required this.onChange,
    required this.currentSlide,
  });

  @override
  State<ImageSliderScreen> createState() => _ImageSliderScreenState();
}

class _ImageSliderScreenState extends State<ImageSliderScreen> {
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.currentSlide);

    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      int nextPage = _pageController.page!.toInt() + 1;
      if (nextPage >= 3) {
        nextPage = 0;
      }
      _pageController.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 168,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: widget.onChange,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "assets/img/slider8.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/img/slider7.avif",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/img/slider6.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: widget.currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.currentSlide == index
                        ? Colors.deepOrange
                        : Colors.transparent,
                    border: Border.all(color: primaryclr),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
