import 'package:flutter/material.dart';

class DetailImageSlider extends StatefulWidget {
  
  final Function (int) onChange;
  final String image;
  const DetailImageSlider({super.key, required this.image, required this.onChange});

  @override
  State<DetailImageSlider> createState() => _DetailImageSliderState();
}

class _DetailImageSliderState extends State<DetailImageSlider> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      child: PageView.builder(
        onPageChanged: widget.onChange,
        itemCount: 3,
        itemBuilder: (context,index){
        return Hero(
          tag: "hero-rectangle",
          child: Image.asset(widget.image),);
      }),
    );
  }
}