// lib/features/map/presentation/map_page.dart
import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.mapTitle),
      ),
      body: Center(
        child: Text(AppConstants.mapTitle),
      ),
    );
  }
}

