import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone_ui/models/models.dart';
import 'package:flutter_facebook_clone_ui/widgets/cretae_room_button.dart';
import 'package:flutter_facebook_clone_ui/widgets/profile_avatar.dart';

class Rooms extends StatelessWidget{
  final List<User> onlineUsers;

  const Rooms({
    Key? key,
    required this.onlineUsers
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.orange,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
        scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context , int index){
          if(index == 0){
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CreateRoomButton(),
            );
          }
          final User user = onlineUsers[index - 1];
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ProfielAvatar(imageUrl: user.imageUrl, isActive: true,),
          );
    },
      )
    );
  }
}