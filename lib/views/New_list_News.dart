import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newcloud/models/Article_model.dart';
import 'package:newcloud/servics/news_servics.dart';

import 'news_list.dart';

class NewListNews extends StatefulWidget {
  const NewListNews({
    super.key,
  });

  @override
  State<NewListNews> createState() => _NewListNewsState();
}

class _NewListNewsState extends State<NewListNews> {
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    GetGeneralNews();
  }

  Future<void> GetGeneralNews() async {
    articles = await NewsService(Dio()).Getnews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(
            articleModel: articles[index],
          ),
        );
      },
    ));
  }
}
