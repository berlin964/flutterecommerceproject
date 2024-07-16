// import 'package:ecommerce_application_1/provider/faverate_provider.dart';
// import 'package:flutter/material.dart';

// class FavertPage extends StatefulWidget {
//   const FavertPage({super.key});

//   @override
//   State<FavertPage> createState() => _FavertPageState();
// }

// class _FavertPageState extends State<FavertPage> {

//    final Provider = FavertProvider.of(context);
//     final finalList = Provider.favert;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade100,
//         title: Text(
//           "Favarite",
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
//         ),
//       ),
//       body: Column(children: [ Expanded(
//               child: ListView.builder(
//                   itemCount: finalList.length,
//                   itemBuilder: (context, index) {
//                     final cartItems = finalList[index];
//                     return Stack(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(15),
//                           child: Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20)),
//                             child: Padding(
//                               padding: const EdgeInsets.all(20),
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     height: 100,
//                                     width: 90,
//                                     decoration: BoxDecoration(
//                                         borderRadius:
//                                             BorderRadius.circular(20)),
//                                     padding: EdgeInsets.all(10),
//                                     child: Image.asset(cartItems.image),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         cartItems.title,
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 16),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                         cartItems.category,
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.grey.shade400,
//                                             fontSize: 14),
//                                       ),
//                                       Text(
//                                         " \$${cartItems.price}",
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 14),
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                             top: 35,
//                             right: 35,
//                             child: Column(
//                               children: [
//                                 IconButton(
//                                     onPressed: () {
//                                       finalList.removeAt(index);
//                                       setState(() {});
//                                     },
//                                     icon: Icon(
//                                       Icons.delete,
//                                       color: Colors.red,
//                                     )),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
                               
//                               ],
//                             ))
//                       ],
//                     );
//                   }))],),
//     );
//   }
// }


import 'package:ecommerce_application_1/provider/faverate_provider.dart';
import 'package:ecommerce_application_1/src/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavertPage extends StatefulWidget {
  const FavertPage({super.key});

  @override
  State<FavertPage> createState() => _FavertPageState();
}

class _FavertPageState extends State<FavertPage> {
  @override
  Widget build(BuildContext context) {
    final provider = FavertProvider.of(context);
    final finalList = provider.favert;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "Favarite",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                final favertItems = finalList[index];
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 85,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(favertItems.image),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favertItems.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    favertItems.category,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    " \$${favertItems.price}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
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
                              setState(() {
                                finalList.removeAt(index);
                              });
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
