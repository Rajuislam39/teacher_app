import 'package:flutter/material.dart';
import 'package:teacher_app/common/widget/card/user_card.dart';

class RAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RAppBar({
    super.key,
    this.height = 180,
    this.color,
    required this.leadingIcon,
    required this.title,
    required this.actionIcon,
    required this.personName,
    this.subTitle=false,
    this.subTitleText, required this.onPress,
  });
  final double? height;
  final Color? color;
  final IconData leadingIcon;
  final VoidCallback onPress;
  final String title;
  final IconData actionIcon;
  final String personName;
  final bool subTitle;
  final String? subTitleText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
              color: color ?? Colors.blue,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: onPress,
                    icon: Icon(
                      leadingIcon,
                      color: Colors.white,
                    )),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  actionIcon,
                  color: Colors.white,
                ))
          ],
        ),
        Padding(
          padding:  const EdgeInsets.only(top: 70),
          child: UserCard(
            name: personName,
            subTitle: subTitle,
            subTitleText: subTitleText,
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height!);
}
