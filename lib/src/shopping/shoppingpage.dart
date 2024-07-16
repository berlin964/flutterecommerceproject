import 'package:ecommerce_application_1/provider/addcart.dart';
import 'package:ecommerce_application_1/src/bottomnavi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkout.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final Provider = CartProvider.of(context);
    final finalList = Provider.cart;
    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? Provider.incrementQnt(index)
                : Provider.decrementQnt(index);
          });
        },
        child: Icon(icon,size: 20,),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomSheet: CheckOutScreen(),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNav()));
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(15)),
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "My Cart",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: finalList.length,
                  itemBuilder: (context, index) {
                    final cartItems = finalList[index];
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(cartItems.image),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cartItems.title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        cartItems.category,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade400,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        " \$${cartItems.price}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 35,
                            right: 35,
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      finalList.removeAt(index);
                                      setState(() {});
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade400,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                           const SizedBox(width: 10,),
                                            productQuantity(Icons.add,index),
                                           const SizedBox(width: 10,),
                                          Text(
                                          
                                            cartItems.quantity.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                           const SizedBox(width: 10,),
                                            productQuantity(Icons.remove,index),
                                           const SizedBox(width: 10,),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ))
                      ],
                    );
                  }))
        ],
      )),
    );
  }
}
