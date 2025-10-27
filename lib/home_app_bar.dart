import 'package:flutter/material.dart';
import 'package:proyeto_flutter/review_list.dart';
import 'card_image.dart';
import 'description_place.dart';
import 'gradient_back.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final descriptionPlace = Container(
      margin: const EdgeInsets.only(top: 250, left: 30, right: 30),
      child: DescriptionPlace(
        "Valle de la Luna",
        1,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris odio lectus, lacinia vel congue eu, fringilla id sem. Mauris faucibus diam purus, eget tincidunt arcu vestibulum vitae. Duis non orci vitae augue sodales eleifend consequat vel massa. Suspendisse potenti. Nam nec fermentum sem, eget sodales odio. Fusce sed volutpat massa. In vehicula ut tortor in consequat. Duis bibendum ipsum quis purus faucibus, et fringilla est pulvinar. Sed laoreet non orci non bibendum. Donec rhoncus eget est quis imperdiet. Vestibulum vitae aliquet magna, nec tempus eros. Ut interdum dolor ut elit hendrerit, id porta libero consequat. Nam vulputate elit quis aliquam mollis. Praesent ornare sagittis ornare.",
      ),
    );

    final reviewList = Container(
      margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: ReviewList(),
    );

    final listView = ListView(
      children: <Widget>[
        descriptionPlace,
        reviewList,
        CardImage("assets/imagenes/paisaje.jpeg"),

      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Paisajes"),
      ),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.white),
          GradientBack(),
          listView,
        ],
      ),
    );
  }
}
