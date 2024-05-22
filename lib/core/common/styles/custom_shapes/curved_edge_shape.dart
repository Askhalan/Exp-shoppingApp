import 'package:fake_store/core/common/styles/custom_shapes/curved_path.dart';
import 'package:flutter/material.dart';
class BottomCurvedShape extends StatelessWidget {
  const BottomCurvedShape({
    super.key, this.child,
  });
 final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: JCustomCurvedEdges(),
      child: child
    );
  }
}
