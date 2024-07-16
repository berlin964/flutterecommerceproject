// import 'package:ecommerce_application_1/src/constants.dart';

// import 'package:ecommerce_application_1/src/favertpage/favertpage.dart';
// import 'package:ecommerce_application_1/src/home/homepage.dart';
// import 'package:ecommerce_application_1/src/shopping/shoppingpage.dart';
// import 'package:flutter/material.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   int currentIndex = 2;
//   List screens = [
//     Scaffold(),
//     FavertPage(),
//     HomePage(),
//     CartPage(),
//     Scaffold(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             currentIndex = 2;
//           });
//         },
//         shape: CircleBorder(),
//         backgroundColor: primaryclr,
//         child: Icon(
//           (Icons.home),
//           color: Colors.white,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         elevation: 1,
//         color: primaryclr,
//         height: 50,
//         shape: CircularNotchedRectangle(),
//         notchMargin: 2,
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   currentIndex = 0;
//                 });
//               },
//               icon: Icon(Icons.grid_view_outlined),
//               color: currentIndex == 0 ? Colors.deepOrange : Colors.white,
//             ),
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   currentIndex = 1;
//                 });
//               },
//               icon: Icon(Icons.favorite_border_outlined),
//               color: currentIndex == 1 ? Colors.deepOrange : Colors.white,
//             ),
//             SizedBox(
//               width: 15,
//             ),
//             IconButton(
//                 onPressed: () {
//                   currentIndex = 3;
//                 },
//                 icon: Icon(Icons.shopping_cart),
//                 color: currentIndex == 3 ? Colors.deepOrange : Colors.white),
//             IconButton(
//               onPressed: () {
//                 currentIndex = 4;
//               },
//               icon: Icon(Icons.person),
//               color: currentIndex == 4 ? Colors.deepOrange : Colors.white,
//             ),
//           ],
//         ),
//       ),
//       body: screens[currentIndex],
//     );
//   }
// }

import 'package:ecommerce_application_1/src/constants.dart';
import 'package:ecommerce_application_1/src/favertpage/favertpage.dart';
import 'package:ecommerce_application_1/src/home/homepage.dart';
import 'package:ecommerce_application_1/src/shopping/shoppingpage.dart';
import 'package:flutter/material.dart';

import 'profile/profilepage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 2;
  List screens = [
    Scaffold(),
    FavertPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: CircleBorder(),
        backgroundColor: primaryclr,
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: primaryclr,
        height: 50,
        shape: CircularNotchedRectangle(),
        notchMargin: 2,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(Icons.grid_view_outlined),
              color: currentIndex == 0 ? Colors.deepOrange : Colors.white,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icon(Icons.favorite_border_outlined),
              color: currentIndex == 1 ? Colors.deepOrange : Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: Icon(Icons.shopping_cart),
              color: currentIndex == 3 ? Colors.deepOrange : Colors.white,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(Icons.person),
              color: currentIndex == 4 ? Colors.deepOrange : Colors.white,
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}

