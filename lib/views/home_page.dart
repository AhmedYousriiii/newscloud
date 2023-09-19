import 'package:flutter/material.dart';
import 'package:newcloud/models/Article_model.dart';
import 'package:newcloud/views/news_list.dart';
// import 'package:newcloud/main.dart';
// import 'package:newcloud/models/Article_model.dart';
// import 'package:newcloud/servics/news_servics.dart';
// import 'package:newcloud/views/news_list.dart';

// import 'package:newcloud/category/category_card.dart';
// import 'package:newcloud/views/news_list.dart';

import '../category/Category_list_view.dart';
import 'New_list_News.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              " cloud",
              style: TextStyle(color: Colors.yellow),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategorysListVeiw(),
              ),
              SliverToBoxAdapter(
                child: NewListNews(),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) {
                  return NewsTile(
                      articleModel: ArticleModel(
                          image: "image",
                          subtitle: "subtitle",
                          title: "title"));
                },
              ))
            ],
          )
          //  Column(
          //   children: [
          //     CategorysListVeiw(),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Expanded(child: NewListNews()),
          //   ],
          // ),
          ),
    );
  }
}
