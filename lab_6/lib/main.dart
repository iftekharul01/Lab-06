import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const lab06());
}

class lab06 extends StatelessWidget {
  const lab06({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 06',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Lab 06'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/10/zatch-bell-and-shonen-anime.jpg'),
              ),
              Image.network(
                "https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/10/zatch-bell-and-shonen-anime.jpg",
              ),
              CachedNetworkImage(
                imageUrl: "https://static1.cbrimages.com/wordpress/wp-content/uploads/2024/02/split-images-of-zatch-brago-and-zeno.jpg",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
