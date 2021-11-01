import 'package:flutter/material.dart';
import '/models/post.dart';
import '/models/post_operations.dart';
import 'package:ted_app/widgets/ted_card.dart';

class TedSection extends StatelessWidget {
  List<Post> posts = [];
  TedSection() {
    posts = PostOperations.getPost();
  }

  List<Widget> prepareCards() {
    return posts.map((post) => TedCard(post)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

          // Divider(
          //   color: Colors.black,
          // ),
          children: prepareCards()),
    );
  }
}
