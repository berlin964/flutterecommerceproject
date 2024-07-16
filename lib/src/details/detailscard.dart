import 'package:ecommerce_application_1/productmodel.dart';
import 'package:ecommerce_application_1/src/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemsDetails extends StatefulWidget {
  final Product product;
  const ItemsDetails({super.key, required this.product});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.product.title,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${widget.product.price}",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: primaryclr),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            widget.product.rate.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      widget.product.review,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
            SizedBox(width: 30,),
            Text.rich(TextSpan(children: [
              TextSpan(text: "seller", style: TextStyle(fontSize: 16)),
              TextSpan(
                  text: widget.product.seller,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ]))
          ],
        )
      ],
    );
  }
}
