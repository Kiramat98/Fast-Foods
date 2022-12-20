import 'package:flutter/material.dart';

class ProductScreenTopBar extends StatelessWidget {
  const ProductScreenTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
      height: MediaQuery.of(context).size.height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Search",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Row(
            children: const [
              Icon(
                Icons.location_on,
                color: Colors.orange,
                size: 20,
              ),
              Text(
                "Swat,KPK",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
