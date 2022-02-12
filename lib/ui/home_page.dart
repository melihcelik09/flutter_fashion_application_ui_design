import 'package:flutter/material.dart';
import 'package:flutter_fashion_application/constants/constant.dart';
import 'package:flutter_fashion_application/ui/follow_suggest.dart';
import 'package:flutter_fashion_application/ui/post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Fashion App',
          style: Constant.appTitle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_camera),
            color: Constant.cameraIcon,
          )
        ],
      ),
      body: ListView(
        padding: Constant.followSuggestPadding,
        children: const [
          FollowSuggest(),
          PostCard(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          tabs: const [
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 22)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 22)),
            Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 22)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 22)),
          ],
        ),
      ),
    );
  }
}
