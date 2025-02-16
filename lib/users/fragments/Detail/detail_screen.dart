import 'package:clothes_app/users/fragments/Detail/detail_app_bar.dart';
import 'package:clothes_app/users/fragments/widget/product_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key,required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Column(
            children: [
              //For back button share favorit
              DetailAppBar(),
            ],
          )),
    );
  }
}
