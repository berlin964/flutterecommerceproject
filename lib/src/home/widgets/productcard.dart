// import 'package:ecommerce_application_1/provider/faverate_provider.dart';
// import 'package:ecommerce_application_1/src/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../../productmodel.dart';
// import '../../details/detailscreen.dart';

// class ProductCardScreen extends StatefulWidget {
//   final Product product;
//   const ProductCardScreen({super.key, required this.product});

//   @override
//   State<ProductCardScreen> createState() => _ProductCardScreenState();
// }

// class _ProductCardScreenState extends State<ProductCardScreen> {

//   final provider = FavertProvider.of(context);
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => DetailScreen(
//                       product: widget.product,
//                     )));
//       },
//       child: Stack(
//         children: [
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.grey.shade100),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Center(
//                   child: Hero(
//                     tag: "hero-rectangle",
//                     child: Image.asset(
//                       widget.product.image,
//                       width: 120,
//                       height: 80,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Text(
//                     widget.product.title,
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       "\$${widget.product.price}",
//                       style:
//                           TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                     ),
//                     Row(
//                       children: List.generate(
//                         widget.product.colors.length,
//                         (index) => Container(
//                           width: 18,
//                           height: 18,
//                           margin: EdgeInsets.only(left: 4),
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: widget.product.colors[index],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Positioned(
//               child: Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               height: 40,
//               width: 35,
//               decoration: BoxDecoration(
//                 color: primaryclr,
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(20),
//                       topLeft: Radius.circular(10))),
//                       child: GestureDetector(onTap: () {
                        
//                       },child: Icon(Icons.favorite_border,color: Colors.white,size: 20,),),
//             ),
//           ))
//         ],
//       ),
//     );
//   }
// }

import 'package:ecommerce_application_1/provider/faverate_provider.dart';
import 'package:ecommerce_application_1/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../productmodel.dart';
import '../../details/detailscreen.dart';

class ProductCardScreen extends StatefulWidget {
  final Product product;
  const ProductCardScreen({super.key, required this.product});

  @override
  State<ProductCardScreen> createState() => _ProductCardScreenState();
}

class _ProductCardScreenState extends State<ProductCardScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavertProvider>(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      product: widget.product,
                    )));
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Hero(
                    tag: "hero-rectangle",
                    child: Image.asset(
                      widget.product.image,
                      width: 120,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    widget.product.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "\$${widget.product.price}",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: List.generate(
                        widget.product.colors.length,
                        (index) => Container(
                          width: 18,
                          height: 18,
                          margin: EdgeInsets.only(left: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: widget.product.colors[index],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 40,
                width: 35,
                decoration: BoxDecoration(
                  color: primaryclr,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(10)),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      provider.toggleFavorite(widget.product);
                    });
                  },
                  child: Icon(
                    provider.isExist(widget.product)

                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
