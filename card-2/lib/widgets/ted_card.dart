import 'package:flutter/material.dart';
import '/models/post.dart';

class TedCard extends StatelessWidget {
  Post post;
  TedCard(this.post);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Card(
      elevation: 10,
      child: Stack(
        children: [
          Image.network(post.url),
          Positioned(
            bottom: 10,
            left: 5,
            width: size.width - 20,

            //width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      post.title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      post.subtitle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ),
                    Text(
                      post.time,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
