import 'package:ecommerce_application_1/src/constants.dart';
import 'package:flutter/material.dart';

class DiscriptionScreen extends StatefulWidget {
  final String discription;
  const DiscriptionScreen({super.key, required this.discription});

  @override
  State<DiscriptionScreen> createState() => _DiscriptionScreenState();
}

class _DiscriptionScreenState extends State<DiscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: primaryclr),
              alignment: Alignment.center,
              child: Text(
                "Discription",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
                "special",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "collection",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
          ],
        ),
        SizedBox(height: 10,),
        Text(widget.discription,style: TextStyle(color: Colors.grey,fontSize: 10),)
      ],
    );
  }
}
