import 'package:clothes_app/users/fragments/widget/homeappbar.dart';

import 'package:clothes_app/users/fragments/widget/product_favorit.dart';
import 'package:clothes_app/users/fragments/widget/favorit_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FavoritesFragmentScreen extends StatefulWidget
{
  const FavoritesFragmentScreen({super.key});

  @override
  State<FavoritesFragmentScreen> createState() => _FavoritesFragmentScreenState();
}

class _FavoritesFragmentScreenState extends State<FavoritesFragmentScreen> {
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

              const SizedBox(height: 8),
              //for search bar
              const homeappbar(),

              const SizedBox(height: 8),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your favorite",
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
                itemCount: pro.length,
                itemBuilder: (context,index){
                  return ProductFavorit(pro: pro[index],);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}