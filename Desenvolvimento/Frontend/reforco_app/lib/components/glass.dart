import 'dart:ui';

import 'package:flutter/material.dart';

/// Component that simulates the glass effect
class GlassComponent extends StatelessWidget {
  /// Widget that should be shown centered in the glass view
  final Widget child;

  /// Background
  final Color color;

  /// Padding
  final EdgeInsets padding;

  /// Border Radius
  final BorderRadius radius;

  /// GlassComponent initializer
  GlassComponent({
    required this.child,
    this.color = Colors.white,
    this.padding = const EdgeInsets.fromLTRB(40, 18, 40, 28),
    this.radius = const BorderRadius.all(Radius.circular(10)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: this.radius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: const Alignment(0.2, 0),
              end: const Alignment(0.8, 1),
              colors: <Color>[
                this.color.withOpacity(0.4),
                this.color.withOpacity(0.1)
              ],
            )),
            padding: this.padding,
            child: this.child,
          ),
        ),
      ),
    );
  }
}
