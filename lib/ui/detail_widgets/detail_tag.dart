import 'package:flutter/material.dart';
import 'package:flutter_fashion_application/constants/constant.dart';

class DetailTag extends StatefulWidget {
  const DetailTag({Key? key}) : super(key: key);

  @override
  _DetailTagState createState() => _DetailTagState();
}

class _DetailTagState extends State<DetailTag> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 2,
      left: 50,
      child: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'LAMINATED',
                style: Constant.followSuggestText,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              )
            ],
          ),
        ),
        height: 40,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: Constant.borderRadiusDetail,
        ),
      ),
    );
  }
}
