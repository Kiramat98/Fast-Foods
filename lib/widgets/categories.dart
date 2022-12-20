import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String image1;
  final String title;
  const Categories({
    Key? key,
    required this.image1,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      //width: title.length >= 8 ? 140 : 100,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(.3)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 2),
            child: Container(
              //height: 33,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image1),
                ),
              ),
            ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(20),
            //   child: Image(
            //     height: 40,
            //     width: 40,
            //     image: AssetImage(image1),
            //   ),
            // ),
          ),
          const SizedBox(
            width: 7,
          ),
          Text(title),
        ],
      ),
    );
  }
}
