import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  final String title;
  final String seeall;
  final VoidCallback onPress;
  //final Function onPress=(){};
  const Titles({
    required this.title,
    required this.seeall,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 25,
        bottom: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: onPress,
            child: Text(
              seeall,
              style: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
