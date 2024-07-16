import 'package:ecommerce_application_1/productmodel.dart';
import 'package:ecommerce_application_1/provider/addcart.dart';
import 'package:ecommerce_application_1/src/shopping/checkout.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  const AddToCart({super.key, required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentindex = 1;
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.black),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        if(currentindex!=1){
                          setState(() {
                            currentindex--;
                          });
                        }
                      },
                      iconSize: 15,
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentindex.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                      onPressed: () {
                         setState(() {
                            currentindex++;
                          });
                      },
                      iconSize: 15,
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                provider.toggleFavorite(widget.product);
                const  snackBar = SnackBar(
                    content: Text(
                  "successfuly added!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepOrange),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "ViewToCart",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
