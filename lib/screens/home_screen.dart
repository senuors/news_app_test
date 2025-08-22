import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_category_widget.dart';

import '../widgets/category_list_view.dart';
import '../widgets/custom_news_tile.dart';
import '../widgets/news_listtile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            CategoryListView(),
            SizedBox(height: 30),
            Expanded(child: NewsListTile()),
          ],
        ),
      ),

      //
    );
  }
}
