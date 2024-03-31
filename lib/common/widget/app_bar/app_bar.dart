import 'package:flutter/material.dart';
class RAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RAppBar({
    super.key, required this.height,
  });
  final double height;




  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,

      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),

        )
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.white,)),
                  const Text("DASHBOARD",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active_outlined,color: Colors.white,))
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}