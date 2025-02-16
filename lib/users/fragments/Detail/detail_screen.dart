import 'package:clothes_app/users/fragments/Detail/detail_app_bar.dart';
import 'package:clothes_app/users/fragments/Detail/image_slider.dart';
import 'package:clothes_app/users/fragments/widget/product_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key,required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            children: [
              //For back button share favorit
              DetailAppBar(),
              //for detail image slider
              MyImageSlider(image: widget.product.image, onChange: (index){
                setState(() {
                  currentImage = index;
                });
              })
            ],
          )),
    );
  }
}
