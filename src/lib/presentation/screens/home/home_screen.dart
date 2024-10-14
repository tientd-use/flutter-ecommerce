import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_2/domain/entities/product_entity.dart';
import 'package:flutter_ecommerce_2/presentation/screens/home/widgets/product_card.dart';
import 'package:flutter_ecommerce_2/shared/extension/app_context_ext.dart';

import '../../../gen/assets.gen.dart';
import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  List<ProductEntity> listProduct = [
    ProductEntity(
        salePercent: 0.2,
        image: Assets.images.shirt.image(),
        favoritePressed: () {},
        onPressed: () {},
        productName: "Dorothy Perkins",
        price: "12",
        salePrice: "15"),
    ProductEntity(
        salePercent: 0.3,
        image: Assets.images.shirt.image(),
        favoritePressed: () {},
        onPressed: () {},
        productName: "Dorothy XXX",
        price: "15",
        salePrice: "18")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: context.screenSize().height * 0.7,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: _buildStackBanner(context),
          ),
        ),
        _buildListProduct(),
      ],
    ));
  }

  SliverGrid _buildListProduct() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 8.0,
        // crossAxisSpacing: 10.0,
        childAspectRatio: 0.5,
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return ProductCard(product: listProduct[index]);
        });
      }, childCount: listProduct.length),
    );
  }

  Column _buildStackBanner(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              // width: double.infinity,
              height: context.screenSize().height * 0.67,
              child: Assets.images.banner.image(
                // width: double.infinity,
                height: context.screenSize().height * 0.67,
                fit: BoxFit.cover,
                cacheHeight:
                    (context.screenSize().height * 0.67 * context.pixelRatio())
                        .round(),
              ),
            ),
            Container(
              height: context.screenSize().height * 0.67,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment(0, -0.9),
                  stops: [
                    0.0,
                    0.6,
                    0.8,
                    0.9,
                  ],
                  colors: <Color>[
                    Color(0xAA000000),
                    Color(0x44000000),
                    Colors.transparent,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 50,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fashion \n sale',
                      style: context.displayMediumCus(),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('Check')),
                  ],
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "News",
            style: context
                .displayMediumCus()
                .copyWith(fontSize: 40, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
