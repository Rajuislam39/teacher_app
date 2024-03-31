import 'package:flutter/material.dart';
class UserCard extends StatelessWidget {
  const UserCard({
    super.key,

    required this.name, required this.subTitle,  this.subTitleText,
  });


  final String name;
  final bool subTitle;
  final String? subTitleText;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: SizedBox(
            height: height*0.2,
            width: width*0.54,
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.person,size: 50,),
                Text(name,style: const TextStyle(fontSize: 20),),
                const Text("STD-12(B)"),
                const SizedBox(
                  height: 5,
                ),
                subTitle ?  Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80
                  ),
                  child: Column(
                    children: [
                      const Divider(

                      ),
                     Text(subTitleText!,textAlign: TextAlign.center,)
                    ],
                  ),
                ) : const SizedBox()
              ],
            ),
          ),
        ),
      ],
    );
  }
}