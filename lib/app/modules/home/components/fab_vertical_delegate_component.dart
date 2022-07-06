import 'package:flutter/material.dart';

class FabVerticalDelegate extends FlowDelegate {

  final AnimationController animation;

  FabVerticalDelegate({required this.animation}) : super(repaint: animation);

  @override
  void paintChildren(FlowPaintingContext context) {

    const buttonSize = 56;
    const buttonRadius = buttonSize / 2;
    const buttonMargin = 10;

    final positionX = context.size.width - buttonSize;
    final positionY = context.size.height - buttonSize;
    final lastFabIndex = context.childCount - 1;

    for(int i = lastFabIndex; i >= 0; i--) {

      final y = positionY - (i == lastFabIndex ? 127 : buttonSize + buttonMargin) * i * animation.value;
      final x = positionX - (i == lastFabIndex ? 120 : buttonSize + buttonMargin) * i * animation.value;
      final size = (i != 0) ? animation.value : 1.0;

      context.paintChild(i, transform: Matrix4.translationValues(i == lastFabIndex ? x : positionX, y, 0)
        ..translate(buttonRadius, buttonRadius)
        ..scale(size)
        ..translate(-buttonRadius, -buttonRadius));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;

}