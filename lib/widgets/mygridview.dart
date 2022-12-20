import 'package:flutter/material.dart';

import '../utils/datalist.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            mainAxisExtent: 195,
          ),
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(right: 2, left: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          height: 100,
                          image: AssetImage(dataList[index].image),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Container(
                          height: 32,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(.9),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              dataList[index].discount,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    dataList[index].title,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        dataList[index].time,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const VerticalDivider(
                        width: 5,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.orange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        dataList[index].rating,
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$${dataList[index].price1}",
                        style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "\$${dataList[index].price2}",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
