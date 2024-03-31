import 'package:flutter/material.dart';
import 'package:teacher_app/common/widget/app_bar/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const RAppBar(height: 200),
             Padding(
         padding: const EdgeInsets.only(
           top: 100
         ),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Card(
                   child: SizedBox(
                     height: height*0.3,
                     width: width*0.9,
                     child: const Column(
                       children: [
                         Icon(Icons.person,size: 50,)
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ],
         ),
             )
          ],
        ),
      ),
    );
  }
}
