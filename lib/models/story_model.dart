import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone_ui/models/models.dart';

class Story{
  final User user;
  final String imageUrl;
  final bool isViewed;

  const Story({
    required this.imageUrl, required this.user, this.isViewed = false
});
}