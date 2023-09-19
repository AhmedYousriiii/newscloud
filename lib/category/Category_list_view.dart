import 'package:flutter/material.dart';
import 'package:newcloud/category/category_card.dart';
import 'package:newcloud/category/catgory_models.dart';

class CategorysListVeiw extends StatelessWidget {
  const CategorysListVeiw({
    super.key,
  });

  final List<CategoryModel> Categorys = const [
    CategoryModel(
        image: "assets/WhatsApp Image 2023-09-07 at 18.22.12.jpg",
        name: "Sports"),
    CategoryModel(
        image: "assets/WhatsApp Image 2023-09-10 at 18.55.38.jpg",
        name: "Gold"),
    CategoryModel(
        image: "assets/WhatsApp Image 2023-09-10 at 18.55.42.jpg",
        name: "Pyramid"),
    CategoryModel(
        image: "assets/WhatsApp Image 2023-09-10 at 18.56.32.jpg",
        name: "Cars"),
    CategoryModel(
        image: "assets/WhatsApp Image 2023-09-10 at 18.57.20.jpg",
        name: "News"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categorys.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: Categorys[index],
          );
        },
      ),
    );
  }
}
