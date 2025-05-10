import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatingImage extends StatefulWidget {
  final String imagePath;
  const FloatingImage({super.key, required this.imagePath});
  @override
  FloatingImageState createState() => FloatingImageState();
}

class FloatingImageState extends State<FloatingImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);

    _animation = Tween<Offset>(
      begin: const Offset(-5, -10),
      end: const Offset(5, 10),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: _animation.value,
          child: Transform.rotate(
            angle: sin(_controller.value * 2 * pi) * 0.05,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.3),
                    blurRadius: 80.r,
                    spreadRadius: 2,
                    offset: const Offset(1, .1),
                  ),
                ],
              ),
              child: Image.asset(
                widget.imagePath,
                width: 500.w,height: 500.h,fit: BoxFit.fill,
              ),
            ),
          ),
        );
      },
    );
  }
}
