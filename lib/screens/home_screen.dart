import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_listtile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'general'; // الحالة الجديدة: التصنيف المحدد

  void onCategorySelected(String categoryName) {
    setState(() {
      selectedCategory = categoryName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            CategoryListView(
              onCategorySelected: onCategorySelected,
            ), // تمرير الدالة
            SizedBox(height: 30),
            Expanded(
              child: NewsListTile(category: selectedCategory),
            ), // تمرير التصنيف
          ],
        ),
      ),
    );
  }
}
