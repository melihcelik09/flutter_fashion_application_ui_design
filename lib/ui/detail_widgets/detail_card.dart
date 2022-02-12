import 'package:flutter/material.dart';
import 'package:flutter_fashion_application/constants/constant.dart';
import 'package:flutter_fashion_application/ui/detail_widgets/detail_header.dart';

class DetailCard extends StatefulWidget {
  const DetailCard({Key? key}) : super(key: key);

  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15,
      right: 15,
      bottom: 15,
      child: Material(
        borderRadius: Constant.borderRadiusDetail,
        elevation: 4,
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width - 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: Constant.borderRadiusDetail,
          ),
          child: Column(
            children: [
              const DetailHeader(),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: Constant.followSuggestPaddingAll,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('\$6500', style: Constant.appTitle),
                    FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.arrow_forward_ios),
                      backgroundColor: Colors.brown,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
