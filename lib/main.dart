import 'package:flutter/material.dart';
import 'package:newcloud/views/home_page.dart';
import 'package:dio/dio.dart';
import 'package:newcloud/servics/news_servics.dart';

void main() {
  NewsService(Dio()).Getnews();
  runApp(const Newcloud());
}

class Newcloud extends StatelessWidget {
  const Newcloud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
