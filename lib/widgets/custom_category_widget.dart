import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CustomCategoryWidget extends StatelessWidget {
  const CustomCategoryWidget({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Container(
        height: 85,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(category.imageURL),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
