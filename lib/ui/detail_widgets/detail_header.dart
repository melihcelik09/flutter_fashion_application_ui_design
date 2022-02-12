import 'package:flutter/material.dart';
import 'package:flutter_fashion_application/constants/constant.dart';

class DetailHeader extends StatefulWidget {
  const DetailHeader({Key? key}) : super(key: key);

  @override
  State<DetailHeader> createState() => _DetailHeaderState();
}

class _DetailHeaderState extends State<DetailHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: Constant.postCardPaddingAll,
          child: Container(
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: Constant.borderRadiusDetail,
              border: Border.all(color: Colors.grey),
              image: const DecorationImage(
                image: AssetImage('assets/images/dress.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'LAMINATED',
              style: Constant.appTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  width: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/louisvuitton.jpg')),
                  ),
                  child: const Text(
                    'Louis Vuitton',
                    style: Constant.postText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 30,
              width: MediaQuery.of(context).size.width - 170,
              child: const Text(
                'One button V-neck sling long-sleeved waist female stitching dress',
                style: Constant.postText,
              ),
            ),
          ],
        )
      ],
    );
  }
}
