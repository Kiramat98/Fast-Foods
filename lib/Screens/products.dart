import 'package:flutter/material.dart';
import 'package:practice5/widgets/searchbox.dart';

import '../model/productmodel.dart';
import '../widgets/mygridview.dart';
import '../widgets/options_productScreen.dart';
import '../widgets/seeAllProductTopBar.dart';

bool isSelected = true;
bool isSelected2 = true;

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              const ProductScreenTopBar(),
              const SearchBox(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionsProductScreen(
                      title: "Cooks",
                      color: isSelected ? Colors.orange : Colors.white,
                      onTTap: () {
                        setState(() {
                          if (isSelected) {
                            isSelected = false;
                          } else {
                            isSelected = true;
                          }
                        });
                      },
                    ),
                    OptionsProductScreen(
                      title: "Food",
                      color: isSelected2 ? Colors.orange : Colors.white,
                      onTTap: () {
                        setState(() {
                          if (isSelected2) {
                            isSelected2 = false;
                          } else {
                            isSelected2 = true;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          MyGridView()
        ],
      ),
    );
  }
}
