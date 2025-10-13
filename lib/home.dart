import 'package:flutter/material.dart';
import 'description_place.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("My Places"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 250,
              left: 30,
              right: 30,
            ),
            child: DescriptionPlace(
              "Duwili Ella",
              1,
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris odio lectus, lacinia vel congue eu, fringilla id sem. Mauris faucibus diam purus, eget tincidunt arcu vestibulum vitae. Duis non orci vitae augue sodales eleifend consequat vel massa. Suspendisse potenti. Nam nec fermentum sem, eget sodales odio. Fusce sed volutpat massa. In vehicula ut tortor in consequat. Duis bibendum ipsum quis purus faucibus, et fringilla est pulvinar. Sed laoreet non orci non bibendum. Donec rhoncus eget est quis imperdiet. Vestibulum vitae aliquet magna, nec tempus eros. Ut interdum dolor ut elit hendrerit, id porta libero consequat. Nam vulputate elit quis aliquam mollis. Praesent ornare sagittis ornare.",
            ),
          ),
        ],
      ),
    );
  }
}
