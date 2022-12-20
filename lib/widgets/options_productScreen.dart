import 'package:flutter/material.dart';

bool isSelected = true;

class OptionsProductScreen extends StatelessWidget {
  final String title;
  final Function() onTTap;
  final Color color;
  const OptionsProductScreen({
    Key? key,
    required this.title,
    required this.onTTap,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTTap,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
