import 'package:flutter/material.dart';
import 'package:netflix/view/root_app/view/root_app_view.dart';

import 'core/init/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.instance.theme,
      debugShowCheckedModeBanner: false,
      home: const SafeArea(child: RootView()),
    );
  }
}
