

import 'package:flutter/material.dart';

  toggleAnimation(AnimationController _animationController) {
  _animationController.isDismissed
      ? _animationController.forward()
      : _animationController.reverse();
}