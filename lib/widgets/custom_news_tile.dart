import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class CustomNewsTile extends StatelessWidget {
  const CustomNewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(44),
              image: DecorationImage(
                image: NetworkImage(articleModel.imgURL),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Text(
            articleModel.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          Text(
            articleModel.description,
            style: TextStyle(fontSize: 14, color: Colors.grey),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
