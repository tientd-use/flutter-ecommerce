import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2/domain/entities/product_entity.dart';
import 'package:flutter_ecommerce_2/shared/extension/app_context_ext.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: context.screenSize().width * 0.5,
                height: context.screenSize().width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: product.image.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -24,
                right: -20,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Icon(
                    Icons.favorite,
                    size: 24,
                  ),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(12),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.productName),
                Text(product.price),
                Text(product.salePrice),
              ],
            ),
          )
        ],
      ),
    );
  }
}
