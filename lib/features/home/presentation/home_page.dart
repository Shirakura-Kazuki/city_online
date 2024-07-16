// lib/features/home/presentation/home_page.dart
import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.homeTitle),
      ),
      body: Center(
        child: Text(AppConstants.homeTitle),
      ),
    );
  }
}

