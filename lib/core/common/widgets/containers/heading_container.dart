
import 'package:fake_store/core/common/styles/custom_shapes/curved_edge_shape.dart';
import 'package:fake_store/core/common/widgets/containers/circular_container.dart';
import 'package:fake_store/core/constants/colors.dart';
import 'package:flutter/material.dart';

class JPrimaryHeaderContainer extends StatelessWidget {
  const JPrimaryHeaderContainer({
    super.key,
    required this.child,  this.height 
  });
  final double? height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BottomCurvedShape(
      child: Container(
        height: height,
          color: JColor.accent,
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              //----------------------------------------- CUSTOM BACKGROUND SHAPES -----------------------------------------
              
              Positioned(
                  top: -250,
                  right: -90,
                  child:
                      JCircularContainer(color: JColor.white.withOpacity(0.1))),
              Positioned(
                  top:40,
                  right: 230,
                  child:
                      JCircularContainer(color: JColor.white.withOpacity(0.1))),

              //-------------------------------------------------- CHILD --------------------------------------------------

              child,
            ],
          )),
    );
  }
}
