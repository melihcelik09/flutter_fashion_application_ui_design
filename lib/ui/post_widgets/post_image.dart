import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class PostImage extends StatelessWidget {
  const PostImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgPath1 = 'assets/images/modelgrid1.jpeg';
    String imgPath2 = 'assets/images/modelgrid2.jpeg';
    String imgPath3 = 'assets/images/modelgrid3.jpeg';
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/detail', arguments: {
              'imagePath': 'assets/images/modelgrid1.jpeg',
            });
          },
          child: Hero(
            tag: imgPath1,
            child: Container(
              height: 200,
              width: (MediaQuery.of(context).size.width - 50) / 2,
              decoration: BoxDecoration(
                borderRadius: Constant.borderRadiusImage,
                image: const DecorationImage(
                  image: AssetImage("assets/images/modelgrid1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/detail', arguments: {
                  'imagePath': 'assets/images/modelgrid2.jpeg',
                });
              },
              child: Hero(
                tag: imgPath2,
                child: Container(
                  height: 95,
                  width: (MediaQuery.of(context).size.width - 100) / 2,
                  decoration: BoxDecoration(
                    borderRadius: Constant.borderRadiusImage,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/modelgrid2.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/detail', arguments: {
                  'imagePath': 'assets/images/modelgrid3.jpeg',
                });
              },
              child: Hero(
                tag: imgPath3,
                child: Container(
                  height: 95,
                  width: (MediaQuery.of(context).size.width - 100) / 2,
                  decoration: BoxDecoration(
                    borderRadius: Constant.borderRadiusImage,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/modelgrid3.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
