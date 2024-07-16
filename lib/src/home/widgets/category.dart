import 'package:ecommerce_application_1/model.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:Categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(onTap: () {
            setState(() {
              selectedIndex= index;
            });
            
          },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: selectedIndex == index ? Colors.blue.shade100:Colors.transparent
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
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 5,),
                  Text(Categories[index].title,style: TextStyle(fontSize: 16,color: Colors.black),)
              
                ],
              ),
            ),
          );
        },
       
      ),
    );
  }
}

