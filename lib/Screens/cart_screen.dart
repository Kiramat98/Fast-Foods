import 'package:flutter/material.dart';
import 'package:practice5/utils/cartitemlist.dart';
import 'package:practice5/widgets/top_bar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(),
            ItemsList(count: count),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text(
                "Summary",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SummaryDetails(
              price: "\$12.99",
              title: "Subtotal",
              color: Colors.grey,
              topPadding: 20,
              fontWeight: FontWeight.normal,
            ),
            const SummaryDetails(
              title: "Estimate Delivery",
              price: "\$1.99",
              topPadding: 20,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
            const SummaryDetails(
              title: "Total",
              price: "\$13.99",
              color: Colors.black,
              topPadding: 40,
              fontWeight: FontWeight.bold,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.orange.shade600,
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  "Pay Now",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SummaryDetails extends StatelessWidget {
  final String price;
  final String title;
  final Color color;
  final double topPadding;
  final FontWeight fontWeight;
  const SummaryDetails({
    Key? key,
    required this.price,
    required this.title,
    required this.color,
    required this.fontWeight,
    required this.topPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                TextStyle(color: color, fontSize: 17, fontWeight: fontWeight),
          ),
          Text(
            price,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ],
      ),
    );
  }
}

class ItemsList extends StatelessWidget {
  const ItemsList({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: ListView.builder(
        itemCount: cartItemList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(bottom: 7),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    fit: BoxFit.cover,
                    height: 90,
                    width: 90,
                    image: AssetImage(cartItemList[index].image),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              cartItemList[index].title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const Icon(
                              Icons.delete,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          cartItemList[index].subTitle,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    count - 1;
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.orange.shade200,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "$count",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    count + 1;
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.orange.shade200,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              cartItemList[index].price,
                              style: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
