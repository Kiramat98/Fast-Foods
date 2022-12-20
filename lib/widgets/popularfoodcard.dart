import 'package:flutter/material.dart';

class PopularFoodsCard extends StatelessWidget {
  final String coverImage;
  final String discount;
  final String name;
  const PopularFoodsCard({
    required this.coverImage,
    required this.discount,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  height: 120,
                  fit: BoxFit.cover,
                  image: AssetImage(coverImage),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 10,
                child: Container(
                  height: 35,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(.9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      discount,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
