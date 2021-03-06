import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone_ui/config/pallete.dart';
import 'package:flutter_facebook_clone_ui/data/data.dart';
import 'package:flutter_facebook_clone_ui/models/models.dart';
import 'package:flutter_facebook_clone_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: const Text("facebook", style: TextStyle(
              color: Palette.facebookBlue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),),
          centerTitle: false,
            floating: true,
            actions: [
              CircleButton(icon: Icons.search,
                  iconSize: 30,
                  onPressed: ()=> print("Search")
              ),

              CircleButton(icon: MdiIcons.facebookMessenger,
                  iconSize: 30,
                  onPressed: ()=> print("facebook messanger")
              )

            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),

          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers,),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),

          SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index){
                  final Post post = posts[index];
                  return PostContainer(post: post);

                },
                childCount: posts.length,

          ),
          ),
        ],
      ),
    );
  }
}
