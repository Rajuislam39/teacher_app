import 'package:flutter/material.dart';
import 'package:teacher_app/common/widget/custom_app_bar/app_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            RAppBar(
              leadingIcon: Icons.arrow_back,
              title: "PROFILE",
              actionIcon: Icons.edit,
              personName: "Ansh Sharma",
              subTitle: true,
              subTitleText:
                  "Lorem ipsum is simply dummy text of the standard dummy",
              onPress: () {
                Navigator.pop(context);
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.phone),
                              SizedBox(
                                width: 20,
                              ),
                              Text("+91 999999952541")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.email),
                              SizedBox(
                                width: 20,
                              ),
                              Text("raju@gmail.com")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Card(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Personal Details"),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Friends List"),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
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
