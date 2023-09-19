import 'package:flutter/material.dart';
import 'package:newcloud/models/Article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              articleModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            )),
        Text(
          articleModel.title,
          style: TextStyle(fontSize: 14),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          articleModel.subtitle ?? '',
          style: TextStyle(fontSize: 8),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
