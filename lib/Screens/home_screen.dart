import 'package:flutter/material.dart';
import 'package:practice5/Screens/products.dart';
import 'package:practice5/utils/datalist.dart';
import 'package:practice5/widgets/top_bar.dart';
import 'package:practice5/widgets/categories.dart';
import 'package:practice5/widgets/titles.dart';
import 'package:practice5/widgets/searchbox.dart';
import 'package:practice5/widgets/popularfoodcard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "What do you want",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'to',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'eat',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'today',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SearchBox(),
                  ],
                ),
              ),
              Titles(
                title: 'Categories',
                seeall: 'See all',
                onPress: () {},
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Categories(
                      image1: "assets/images/burger.png",
                      title: 'Hameburger',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Categories(
                      image1: "assets/images/donuts.jpg",
                      title: 'Donuts',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Categories(
                      image1: "assets/images/fastfoods.jpg",
                      title: 'FastFoods',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Categories(
                      image1: "assets/images/salan.jpg",
                      title: 'Curry',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Titles(
                title: 'Popular Food',
                seeall: "See all ( ${dataList.length.toString()} )",
                onPress: (() => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsScreen(),
                        ),
                      )
                    }),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    PopularFoodsCard(
                      coverImage: "assets/images/fastfoods.jpg",
                      discount: "15%",
                      name: "Fast Food",
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    PopularFoodsCard(
                      coverImage: "assets/images/salan.jpg",
                      discount: "10%",
                      name: "Curry",
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    PopularFoodsCard(
                      coverImage: "assets/images/donuts.jpg",
                      discount: "20%",
                      name: "Donuts",
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    PopularFoodsCard(
                      coverImage: "assets/images/salan.jpg",
                      discount: "25%",
                      name: "Curry",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
