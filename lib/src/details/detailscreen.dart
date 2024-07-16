import 'package:ecommerce_application_1/productmodel.dart';
import 'package:ecommerce_application_1/src/details/addtocart.dart';
import 'package:ecommerce_application_1/src/details/detailappbar.dart';
import 'package:ecommerce_application_1/src/details/detailscard.dart';
import 'package:ecommerce_application_1/src/details/discription.dart';
import 'package:ecommerce_application_1/src/details/image_slider.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentindex = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //----detailappbar--------

            DetailAppBar(product:widget.product,),
            //-----detailsimageslider--------
            DetailImageSlider(
                image: widget.product.image,
                onChange: (index) {
                  setState(() {
                    currentindex = index;
                  });
                }),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: currentindex == index ? 15 : 8,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentindex == index
                        ? Colors.deepOrange
                        : Colors.transparent,
                    border: Border.all(color: primaryclr),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
              ),
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemsDetails(product: widget.product),
                  Text(
                    "color",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: List.generate(
                        widget.product.colors.length,
                        (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentColor=index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentColor == index
                                        ? Colors.white
                                        : widget.product.colors[index],
                                    border: currentColor == index
                                        ? Border.all(
                                            color: widget.product.colors[index])
                                        : null),
                                padding: currentColor == index
                                    ? EdgeInsets.all(2)
                                    : null,
                                margin: EdgeInsets.only(right: 15),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: widget.product.colors[index],
                                      shape: BoxShape.circle),
                                ),
                              ),
                            )),
                  ),
                  SizedBox(height: 20,),
                  DiscriptionScreen(discription: widget.product.discription)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
