// import 'package:ecommerce_application_1/productmodel.dart';
// import 'package:ecommerce_application_1/src/home/widgets/home_appbar.dart';
// import 'package:ecommerce_application_1/src/home/widgets/productcard.dart';
// import 'package:flutter/material.dart';

// import '../../model.dart';
// import 'widgets/category.dart';
// import 'widgets/image_slider.dart';
// import 'widgets/searchbar.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int currentSlider = 0;
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {

//     List<List<Product>> selectedCategoiers = [all,shoes,Headphone ];
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 30,
//               ),
//               //----------- for appbar-----------
//               CustomAppBar(),
//               SizedBox(
//                 height: 10,
//               ),
//               //--------searchscreen-----------
//               SarchBarScreen(),
//               SizedBox(
//                 height: 10,
//               ),
//               //-------imageslider-------------
//               ImageSliderScreen(
//                   onChange: (value) {
//                     setState(() {
//                       currentSlider = value;
//                     });
//                   },
//                   currentSlide: currentSlider),
//               SizedBox(
//                 height: 10,
//               ),
//               //--------for catefory------------
//              SizedBox(
//       height: 130,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount:Categories.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(onTap: () {
//             setState(() {
//               selectedIndex= index;
//             });
            
//           },
//             child: Container(
//               padding: EdgeInsets.all(5),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: selectedIndex == index ? Colors.blue.shade100:Colors.transparent
//               ),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 65,
//                     width: 65,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                         image: DecorationImage(
//                             image: AssetImage(
//                               Categories[index].Image,
//                             ),
//                             fit: BoxFit.cover)),
//                   ),
//                   SizedBox(height: 5,),
//                   Text(Categories[index].title,style: TextStyle(fontSize: 16,color: Colors.black),)
              
//                 ],
//               ),
//             ),
//           );
//         },
       
//       ),
//     ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Special For you",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//                   ),
//                   Text(
//                     "view all",
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//                   ),
                  
//                 ],
//               ),
//               GridView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 15),
                      
//                       itemCount: selectedCategoiers[selectedIndex].length,
                    
//                   itemBuilder: (context, index) {
//                        return ProductCardScreen(product: selectedCategoiers[selectedIndex][index]);
//                   }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:ecommerce_application_1/productmodel.dart';
import 'package:ecommerce_application_1/src/home/widgets/home_appbar.dart';
import 'package:ecommerce_application_1/src/home/widgets/productcard.dart';
import 'package:flutter/material.dart';

import '../../model.dart';
import 'widgets/image_slider.dart';
import 'widgets/searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSlider = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectedCategories = [all, shoes, Headphone];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              //----------- for appbar-----------
              CustomAppBar(),
              SizedBox(
                height: 10,
              ),
              //--------searchscreen-----------
              SarchBarScreen(),
              SizedBox(
                height: 10,
              ),
              //-------imageslider-------------
              ImageSliderScreen(
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
                currentSlide: currentSlider,
              ),
              SizedBox(
                height: 10,
              ),
              //--------for category------------
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedIndex == index
                              ? Colors.blue.shade100
                              : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    Categories[index].Image,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              Categories[index].title,
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For you",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                ),
                itemCount: selectedIndex < selectedCategories.length
                    ? selectedCategories[selectedIndex].length
                    : 0,
                itemBuilder: (context, index) {
                  return selectedIndex < selectedCategories.length
                      ? ProductCardScreen(
                          product: selectedCategories[selectedIndex][index])
                      : Container(); // Fallback for invalid index
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
