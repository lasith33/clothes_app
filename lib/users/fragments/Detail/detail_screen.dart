import 'package:clothes_app/users/fragments/Detail/detail_app_bar.dart';
import 'package:clothes_app/users/fragments/Detail/image_slider.dart';
import 'package:clothes_app/users/fragments/Detail/items_details.dart';
import 'package:clothes_app/users/fragments/Detail/widget/addto_cart.dart';
import 'package:clothes_app/users/fragments/Detail/widget/description.dart';
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
  int currentColor =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: AddtoCart(product :widget.product),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //For back button share favorit
              DetailAppBar(),
              //for detail image slider
              MyImageSlider(image: widget.product.image, onChange: (index){
                setState(() {
                  currentImage = index;
                });
              },
              ),
               const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                List.generate(5,
                      (index) => AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentImage == index ?15: 8,
                    height: 8,
                    margin: const  EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentImage == index
                            ? Colors.black
                            :Colors.transparent,
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //for product name,price,rating,and seller
                    ItemsDetails(product: widget.product),
                    const SizedBox(height: 20),
                    //add available colors
                    Text(
                      "Color",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: List.generate(
                        widget.product.colors.length,
                          (index)=> GestureDetector(
                            onTap: (){
                              setState(() {
                                currentColor = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentColor == index ? Colors.white
                                :widget.product.colors[index],
                                border: currentColor == index
                                    ? Border.all(
                                  color: widget.product.colors[index],
                                )
                                    :null,
                              ),
                              padding: currentColor == index
                                  ? const EdgeInsets.all(2)
                                  :null,
                              margin: const EdgeInsets.only(right: 15),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: widget.product.colors[index],
                                  shape:  BoxShape.circle
                                ),
                              ),
                            ),
                          ),
                      ),

                    ),
                    const SizedBox(height: 20),
                    //for description
                    Description(description: widget.product.description,)
                  ],
                ),
              ),
            ],
          )
        ),
      )
    );
  }
}
