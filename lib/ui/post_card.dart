import 'package:flutter/material.dart';
import 'package:flutter_fashion_application/constants/constant.dart';
import 'package:flutter_fashion_application/ui/post_widgets/post_bottom_bar.dart';
import 'package:flutter_fashion_application/ui/post_widgets/post_header.dart';
import 'package:flutter_fashion_application/ui/post_widgets/post_image.dart';
import 'package:flutter_fashion_application/ui/post_widgets/post_tag.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constant.postCardPaddingAll,
      child: Material(
        borderRadius: Constant.borderRadius,
        elevation: 4,
        child: Container(
          height: 482,
          width: double.infinity,
          padding: Constant.postCardPaddingAll,
          child: Column(
            children: const [
              PostHeader(),
              SizedBox(height: 15),
              Text(
                "This official website features a ribbed knit zipper jacket that is modern and stylish.It looks very temparament and is recommended to friends",
                style: Constant.postText,
              ),
              SizedBox(height: 15),
              PostImage(),
              SizedBox(height: 10),
              PostTag(),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 5),
              PostBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
