import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone_ui/models/models.dart';

class Post{
  final User user;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int shares;
  final int comments;

  const Post({
    required this.user,
    required this.caption,
    required this.imageUrl,
    required this.comments,
    required this.likes,
    required this.shares,
    required this.timeAgo
  });
}
