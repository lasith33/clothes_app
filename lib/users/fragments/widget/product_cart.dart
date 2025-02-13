import 'package:clothes_app/users/fragments/widget/product_model.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final Product product;
  const ProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Center(
                  child: Image.asset(
                    product.image,
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                  SizedBox(height: 10),
                 Padding(
                    padding: EdgeInsets.only(left: 15),
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
        )
      ],),
    );
  }
}
