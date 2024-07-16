import 'package:ecommerce_application_1/src/constants.dart';
import 'package:flutter/material.dart';

class SarchBarScreen extends StatefulWidget {
  const SarchBarScreen({super.key});

  @override
  State<SarchBarScreen> createState() => _SearchBarState();
}

class _SearchBarState extends State<SarchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: primaryclr),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "sarch...",
                    hintStyle: TextStyle(color: Colors.white)),
              ))
        ],
      ),
    );
  }
}
