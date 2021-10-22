import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone_ui/config/pallete.dart';

class CreateRoomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
        onPressed: () => print('Create Room'),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        borderSide: BorderSide(
        width: 3.0,
        color: Colors.blueAccent,
      ),
        textColor: Palette.facebookBlue,
        child: Row(
        children: [
         ShaderMask(
           shaderCallback: (rect) => Palette.createRoomGradient.createShader(rect),
           child: Icon(Icons.video_call,
            size: 35.0,
            color: Colors.white
           ),
         ),
          const SizedBox(width: 4.0,),
          Text("Create\nRoom"),
        ],
      ),
    );

  }
}