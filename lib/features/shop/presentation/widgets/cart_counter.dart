// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:fake_store/core/constants/colors.dart';
import 'package:fake_store/features/shop/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:fake_store/features/shop/presentation/pages/cart/scn_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScnCart(),
                      ));
                },
                icon: Icon(Icons.card_travel_rounded,
                    color: JColor.primary, size: 25)),
            Positioned(
              right: 1,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: JColor.primary),
                height: 18,
                width: 18,
                child: Center(
                    child: BlocConsumer<CartBloc, CartState>(
                  listener: (context, state) {    
                    if(state is ProductAddedState){
                      log("Product Added");
                    }              
                  },
                  builder: (context, state) {
                    return Text(context.watch<CartBloc>().cart.length.toString());
                  },
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
