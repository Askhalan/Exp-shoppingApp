// ignore_for_file: prefer_const_constructors

import 'dart:developer';


import 'package:fake_store/features/shop/presentation/bloc/home_bloc/shop_bloc.dart';
import 'package:fake_store/features/shop/presentation/pages/home/w_item_card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProductsSection extends StatelessWidget {
  const AllProductsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<ShopBloc>().add((ShopFetchAllProducts()));
    return BlocConsumer<ShopBloc, ShopState>(
      listener: (context, state) {
        if (state is FailedFetchedAllProducts) {
          log("State is error");
        }else if(state is SuccessfullyFetchedAllProducts){
          log("State is success");
        }
      },
      builder: (context, state) {
        if (state is LoadingFetchedAllProducts) {
          return Center(child: const Text("Loading"));
        }
        if (state is SuccessfullyFetchedAllProducts) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 0.75),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: context.watch<ShopBloc>().products.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemCard(product: context.read<ShopBloc>().products[index],);
            },
          );
        }
        return SizedBox();
      },
    );
  }
}
