// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:fake_store/core/common/widgets/appBar.dart';
import 'package:fake_store/core/common/widgets/gap.dart';
import 'package:fake_store/core/constants/colors.dart';
import 'package:fake_store/core/constants/sizes.dart';
import 'package:fake_store/features/shop/presentation/pages/home/w_all_products.dart';
import 'package:fake_store/features/shop/presentation/pages/home/w_carosel.dart';
import 'package:fake_store/features/shop/presentation/widgets/cart_counter.dart';
import 'package:flutter/material.dart';

class ScnHome extends StatelessWidget {
  const ScnHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppbar(
        heightPercentage: 2,
        title: Text(
          "Ecommerce",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: JColor.primary),
        ),
        actions: [CartCounter()],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: JmSize.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeCarosel(),
              JGap(),
              AllProductsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

