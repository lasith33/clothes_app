import 'package:flutter/material.dart';

class  homeappbar extends StatelessWidget {
  const homeappbar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
            borderRadius: BorderRadius.circular(3)
        ),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0.5),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
          SizedBox(width: 10),Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(hintText: "Search...",
              border: InputBorder.none),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(onPressed: () {},
          icon: Icon(
            Icons.tune,
            color: Colors.grey,
          ),
          ),
        ],
      ),
    );
  }
}
