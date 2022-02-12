import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_fashion_application/constants/constant.dart';

class PostBottomBar extends StatefulWidget {
  const PostBottomBar({Key? key}) : super(key: key);

  @override
  _PostBottomBarState createState() => _PostBottomBarState();
}

class _PostBottomBarState extends State<PostBottomBar> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: const Icon(
              Icons.reply,
              color: Constant.bottomButtonColor,
              size: 30,
            ),
          ),
        ),
        const Text("1.7k", style: Constant.postText),
        const SizedBox(width: 25),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.insert_comment,
              color: Constant.bottomButtonColor,
              size: 25,
            )),
        const Text("325", style: Constant.postText),
        SizedBox(
          width: MediaQuery.of(context).size.width - 228,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      favorite = !favorite;
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favorite ? Colors.red : Constant.bottomButtonColor,
                    size: 25,
                  )),
              const Text("2.3k", style: Constant.postText),
            ],
          ),
        ),
      ],
    );
  }
}
