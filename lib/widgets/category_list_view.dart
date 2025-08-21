import 'package:flutter/cupertino.dart';
import 'package:news_app/models/category_model.dart';

import 'custom_category_widget.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
      imageURL:
          'https://tse2.mm.bing.net/th/id/OIP.EjAL2jn03BXr8OOlqUFm7gHaEK?rs=1&pid=ImgDetMain&o=7&rm=3',
      categoryName: 'News',
    ),
    CategoryModel(
      imageURL:
          'https://th.bing.com/th/id/OIP.2GVMtcOmeL5IH_oApv7MrwHaFc?w=239&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      categoryName: 'Health',
    ),
    CategoryModel(
      imageURL:
          'https://th.bing.com/th/id/OIP.wG__UdPSsOJVNRgX4H7djwHaE7?w=239&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageURL:
          'https://th.bing.com/th/id/OIP.wG__UdPSsOJVNRgX4H7djwHaE7?w=239&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageURL:
          'https://th.bing.com/th/id/OIP.wG__UdPSsOJVNRgX4H7djwHaE7?w=239&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageURL:
          'https://th.bing.com/th/id/OIP.wG__UdPSsOJVNRgX4H7djwHaE7?w=239&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageURL:
          'https://th.bing.com/th/id/OIP.wG__UdPSsOJVNRgX4H7djwHaE7?w=239&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageURL:
          'https://th.bing.com/th/id/OIP.wG__UdPSsOJVNRgX4H7djwHaE7?w=239&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      categoryName: 'Business',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CustomCategoryWidget(category: categories[index]);
        },
      ),
    );
  }
}
