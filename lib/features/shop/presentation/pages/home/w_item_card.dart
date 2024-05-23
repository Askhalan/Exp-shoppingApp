import 'package:fake_store/core/constants/colors.dart';
import 'package:fake_store/core/constants/sizes.dart';
import 'package:fake_store/features/shop/domain/entities/product_entity.dart';
import 'package:fake_store/features/shop/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  const ItemCard({
    super.key, required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
     
    
      elevation: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1 / 0.9,
            child: Image.network(product.image),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                product.title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(),overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                ),
                Text(
                  product.category,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 12),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: JmSize.defaultSpace),
                child: SizedBox(
                  
                  child: Text(
                   product.price.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 17),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                 BlocProvider.of<CartBloc>(context).add(AddProductToCart(product));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(JSize.borderRadMd),
                          bottomRight: Radius.circular(JSize.borderRadMd)),
                      color: JColor.accent),
                  child: const Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
