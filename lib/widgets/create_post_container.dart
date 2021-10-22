import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone_ui/data/data.dart';
import 'package:flutter_facebook_clone_ui/models/user_model.dart';

class CreatePostContainer extends StatelessWidget{
  final User currentUser;

  CreatePostContainer({
    Key? key,
    required this.currentUser
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              const SizedBox(width: 8.0,),
              const Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: "What's on your mind?"),
                  )
              )
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5,),
          Row(
            children: [
              FlatButton.icon(
                  onPressed: ()=> print('Live'),
                  icon: const Icon(Icons.video_call,color: Colors.red,),
                  label: Text('Live'))
            ],
          ),
        ],
      ),
    );
  }
}