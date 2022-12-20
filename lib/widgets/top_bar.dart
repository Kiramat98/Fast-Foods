import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.place,
                color: Colors.orange,
              ),
              Text(
                "Swat,KPK",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Icon(Icons.menu)
        ],
      ),
    );
  }
}
