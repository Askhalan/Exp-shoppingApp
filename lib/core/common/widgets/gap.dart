import 'package:fake_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class JGap extends StatelessWidget {
  const JGap({super.key,  this.h = JmSize.spaceBtwItems,  this.w=0});
  
     final double h;
    final double w;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: h,
      width: w,
    );
  }
}