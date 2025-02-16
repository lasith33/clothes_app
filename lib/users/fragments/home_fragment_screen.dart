import 'package:clothes_app/users/fragments/widget/category.dart';
import 'package:clothes_app/users/fragments/widget/homeappbar.dart';
import 'package:clothes_app/users/fragments/widget/image_slidebar.dart';
import 'package:clothes_app/users/fragments/widget/product_cart.dart';
import 'package:clothes_app/users/fragments/widget/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeFragmentScreen extends StatefulWidget
{
  const HomeFragmentScreen({super.key});

  @override
  State<HomeFragmentScreen> createState() => _HomeFragmentScreenState();
}

class _HomeFragmentScreenState extends State<HomeFragmentScreen> {
  int currentSlider =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            // for customer appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              IconButton(
                style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: const EdgeInsets.all(20),
                ),
                onPressed: (){},
                icon: Image.asset(
                  "images/icon.png",
                  height: 15,
                ),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: (){},
                  iconSize: 20,
                icon:Icon(Icons.notifications_outlined)
              ),
            ],
            ),
            const SizedBox(height: 8),
            //for search bar
            const homeappbar(),

            const SizedBox(height: 8),
            //silderbar
            image_slidebar(currentSlide: currentSlider, onChange: (value){ setState(() {
              currentSlider =value;
            },);
            },
            ),
            const SizedBox(height: 8),
            // for category selector
           const categoriesls(),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Special For you",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                  ),
                ),
               // SizedBox(width: 10,)
              ],
            ),
            // for shopping items
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                ),
              itemCount: products.length,
              itemBuilder: (context,index){
                  return ProductCart(product: products[index],);
              },
            )
          ],
        ),
        ),
      ),
    );
  }
}