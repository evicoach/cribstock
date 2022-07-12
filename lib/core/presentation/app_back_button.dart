import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  final void Function()? onTap;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  AppBackButton({
    this.onTap,
    this.color,
    this.margin,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.of(context).pop(),
      child: Container(
        margin: margin,
        child: Icon(
          Icons.arrow_back_rounded,
          color: color,
        ),
      ),
    );
  }
}
