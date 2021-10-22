import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone_ui/models/models.dart';

class Stories extends StatelessWidget{
  final User currentUser;
  final List<Story> stories;

  const Stories({
    Key? key,
    required this.currentUser,
    required this.stories
}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}