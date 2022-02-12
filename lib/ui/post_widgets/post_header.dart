import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class PostHeader extends StatefulWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  _PostHeaderState createState() => _PostHeaderState();
}

class _PostHeaderState extends State<PostHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: Constant.borderRadius,
            image: const DecorationImage(
                image: AssetImage('assets/images/model1.jpeg'),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Daisy', style: Constant.userTitleText),
              SizedBox(height: 5),
              Text(
                '34 mins ago',
                style: Constant.postText,
              )
            ],
          ),
        ),
        const SizedBox(width: 10),
        IconButton(onPressed: () {}, icon: Constant.moreButtonStyle)
      ],
    );
  }
}
