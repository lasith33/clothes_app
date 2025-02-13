import 'package:flutter/material.dart';
class category {
  final String title;
  final String image;

  category({
    required this.title,
    required this.image,
});
}
final List<category> categories =[
  category(
      title: "Trousers",
      image: "images/trousers.png",
  ),
  category(
    title: "Shirt",
    image: "images/shirt.png",
  ),
  category(
    title: "T-shirt",
    image: "images/tshirt.png",
  ),
  category(
    title: "Frock",
    image: "images/frock.png",
  ),
  category(
    title: "Shoes",
    image: "images/shoes.png",
  ),

];


class  categoriesls extends StatelessWidget {
  const categoriesls({super.key});



  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage( categories[index].image),fit: BoxFit.cover
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                categories[index].title,
                style:const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}
