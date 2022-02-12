import 'package:flutter/material.dart';

import '../constants/constant.dart';

class FollowSuggest extends StatefulWidget {
  const FollowSuggest({Key? key}) : super(key: key);

  @override
  State<FollowSuggest> createState() => _FollowSuggestState();
}

class _FollowSuggestState extends State<FollowSuggest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 10),
      height: 140,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          followSuggest(
            'assets/images/model1.jpeg',
            'assets/images/chanellogo.jpg',
          ),
          const SizedBox(width: 20),
          followSuggest(
            'assets/images/model2.jpeg',
            'assets/images/louisvuitton.jpg',
          ),
          const SizedBox(width: 20),
          followSuggest(
            'assets/images/model3.jpeg',
            'assets/images/chloelogo.png',
          ),
          const SizedBox(width: 20),
          followSuggest(
            'assets/images/model1.jpeg',
            'assets/images/chanellogo.jpg',
          ),
          const SizedBox(width: 20),
          followSuggest(
            'assets/images/model2.jpeg',
            'assets/images/louisvuitton.jpg',
          ),
          const SizedBox(width: 20),
          followSuggest(
            'assets/images/model3.jpeg',
            'assets/images/chloelogo.png',
          ),
          const SizedBox(width: 20),
          followSuggest(
            'assets/images/model1.jpeg',
            'assets/images/chanellogo.jpg',
          ),
        ],
      ),
    );
  }

  Widget followSuggest(String imagePath, String bottomLogoPath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: Constant.borderRadius,
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: Constant.borderRadius,
                  image: DecorationImage(
                      image: AssetImage(bottomLogoPath), fit: BoxFit.fitWidth),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: Constant.buttonStyle,
          child: const Center(
            child: Text(
              'Follow',
              style: Constant.followSuggestText,
            ),
          ),
        ),
      ],
    );
  }
}
