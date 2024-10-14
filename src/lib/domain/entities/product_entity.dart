import 'package:flutter/material.dart';

class ProductEntity {
  final double salePercent;
  final Image image;
  final VoidCallback favoritePressed;
  final VoidCallback onPressed;
  final String productName;
  final String price;
  final String salePrice;

  ProductEntity({
    required this.salePercent,
    required this.image,
    required this.favoritePressed,
    required this.onPressed,
    required this.productName,
    required this.price,
    required this.salePrice,
  });
}
