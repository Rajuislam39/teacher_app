import 'package:flutter/material.dart';
class TempleteCard extends StatelessWidget {
  const TempleteCard({
    super.key,
    required this.height,
    required this.width, required this.name, required this.icon,
  });

  final double height;
  final double width;
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: height*0.2,
        width: width*0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blue.shade200,
              child:  Icon(icon,color: Colors.white,size: 40,),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}