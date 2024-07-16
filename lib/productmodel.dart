import 'package:flutter/material.dart';

class Product {
  final String title;
  final String image;
  final String discription;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.image,
      required this.discription,
      required this.review,
      required this.seller,
      required this.price,
      required this.colors,
      required this.category,
      required this.rate,
      required this.quantity
      });
}


   final List<Product> all = [
    Product(
      title: "shoes",
      image: "assets/img/shoes.png",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 120,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "headphones",
      rate: 4.5, quantity: 1),
       Product(
      title: "phone",
      image: "assets/img/headphone.avif",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 199,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "Tshirt",
      rate: 4.5, quantity: 1),
       Product(
      title: "phone",
      image: "assets/img/headphone1.jpg",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 140,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "phone",
      rate: 4.5, quantity: 1),
       Product(
      title: "phone",
      image: "assets/img/tshirt.avif",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 3000,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "phone",
      rate: 4.5, quantity: 1),
       Product(
      title: "phone",
      image: "",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 120,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "phone",
      rate: 4.5, quantity: 1),
       Product(
      title: "phone",
      image: "",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 120,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "phone",
      rate: 4.5, quantity: 1)];

      final List<Product> shoes = [
    Product(
      title: " Men shoes",
      image: "assets/img/shoes.png",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 120,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "shoes",
      rate: 4.5, quantity: 1),
       Product(
      title: " Men shoes",
      image: "assets/img/shoes.avif",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 120,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "shoes",
      rate: 4.5, quantity: 1),
       Product(
      title: " Men shoes",
      image: "assets/img/shoes.png",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 120,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "shoes",
      rate: 4.5, quantity: 1),
       Product(
      title: " Men shoes",
      image: "assets/img/shoes.png",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 120,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "shoes",
      rate: 4.5, quantity: 1),
  

      ];

      final List<Product> Headphone =[
         Product(
      title: "lg",
      image: "assets/img/headphone.avif",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 199,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "Headphone",
      rate: 4.5, quantity: 1),

       Product(
      title: "boat",
      image: "assets/img/headphone.avif",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 199,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "Headphone",
      rate: 4.5, quantity: 1),

       Product(
      title: "jpl",
      image: "assets/img/headphone.avif",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 199,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "Headphone",
      rate: 4.5, quantity: 1),
       Product(
      title: "sony",
      image: "assets/img/headphone.avif",
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
      review: "(360 reviews)",
      seller: "apple",
      price: 199,
      colors: [
        Colors.blue,
        Colors.black,
        Colors.red,
      ],
      category: "Headphone",
      rate: 4.5, quantity: 1),
      ];

     