import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(.3),
            blurRadius: 20,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        onChanged: ((value) => {}),
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          hintText: 'Search for foods...',
          prefixIcon: Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
