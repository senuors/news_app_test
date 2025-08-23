import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CustomCategoryWidget extends StatelessWidget {
  const CustomCategoryWidget({
    super.key,
    required this.category,
    required this.onTap,
  });

  final CategoryModel category;
  final VoidCallback onTap; // الخاصية الجديدة: دالة عند النقر

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // تغليف الـ Container بـ GestureDetector
      onTap: onTap, // استدعاء الدالة عند النقر
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Container(
          height: 85,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(category.imageURL),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(33),
            color: Colors.black,
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
