import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class PostTag extends StatelessWidget {
  const PostTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 25,
          width: 100,
          decoration: Constant.tagStyle,
          child: const Center(
            child: Text(
              "# Louis vuitton",
              style: Constant.tagText,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 25,
          width: 60,
          decoration: Constant.tagStyle,
          child: const Center(
            child: Text(
              "# Chloe",
              style: Constant.tagText,
            ),
          ),
        ),
      ],
    );
  }
}
