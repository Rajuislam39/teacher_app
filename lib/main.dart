import 'package:flutter/material.dart';

import 'features/screen/dash_board/dashboard.dart';

void main(){
  return runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}
