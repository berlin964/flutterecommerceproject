import 'package:ecommerce_application_1/productmodel.dart';
import 'package:ecommerce_application_1/provider/faverate_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailAppBar extends StatefulWidget {
  final Product product;
  const DetailAppBar({super.key, required this.product});

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  
  @override
  Widget build(BuildContext context) {
     final provider = Provider.of<FavertProvider>(context);
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 30,
            icon: Icon(Icons.arrow_back),
          ),
          Spacer(),
            IconButton(
            onPressed: () {},
            iconSize: 30,
            icon: Icon(Icons.share_outlined),
          ),
          SizedBox(width: 10,),
            IconButton(
            onPressed: () {
            setState(() {
                provider.toggleFavorite(widget.product);
            });

            },
            iconSize: 30,
            icon: Icon( provider.isExist(widget.product) ? Icons.favorite : Icons.favorite_border,
              color: provider.isExist(widget.product) ? Colors.red : null,),
          ),
        ],
      ),
    );
  }
}
