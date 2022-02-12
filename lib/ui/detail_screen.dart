import 'package:flutter/material.dart';
import 'package:flutter_fashion_application/constants/constant.dart';
import 'package:flutter_fashion_application/ui/detail_widgets/detail_card.dart';
import 'package:flutter_fashion_application/ui/detail_widgets/detail_tag.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: routes['imagePath'].toString(),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(routes['imagePath'].toString()),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container()),
          ),
          const DetailCard(),
          const DetailTag()
        ],
      ),
    );
  }
}
