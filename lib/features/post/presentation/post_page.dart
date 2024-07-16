// lib/features/post/presentation/post_page.dart
import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.postTitle),
      ),
      body: Center(
        child: Text(AppConstants.postTitle),
      ),
    );
  }
}
