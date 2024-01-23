import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HeroList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(Scaffold(
        body: HeroPage(),
      )),
      child: Hero(
        tag: 'hero',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://github.com/minje70/minje70/raw/master/cat.jpg',
            height: 52,
          ),
        ),
      ),
    );
  }
}

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Column(
        children: [
          Hero(
            tag: 'hero',
            child: Card(
                child: Image.network(
                    'https://github.com/minje70/minje70/raw/master/cat.jpg')),
          ),
        ],
      ),
    );
  }
}
