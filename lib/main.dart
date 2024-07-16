// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/settings/app_settings.dart';
import 'core/constants/app_constants.dart';
import 'features/home/presentation/home_page.dart';
import 'features/map/presentation/map_page.dart';
import 'features/post/presentation/post_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppSettings(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<AppSettings>(context);

    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppConstants.primaryColor,
        fontFamily: settings.fontFamily,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    MapPage(),
    PostPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'マップ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: '投稿',
          ),
        ],
      ),
    );
  }
}
