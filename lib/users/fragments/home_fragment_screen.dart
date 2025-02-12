import 'package:clothes_app/users/fragments/widget/homeappbar.dart';
import 'package:clothes_app/users/fragments/widget/image_slidebar.dart';
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

            image_slidebar(currentSlide: currentSlider, onChange: (value){ setState(() {
              currentSlider =value;
            },);
            },
            ),
          ],
        ),
        ),
      ),
    );
  }
}