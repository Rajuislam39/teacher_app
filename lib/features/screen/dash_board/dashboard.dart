import 'package:flutter/material.dart';
import 'package:teacher_app/common/widget/custom_app_bar/app_bar.dart';
import 'package:teacher_app/features/screen/dash_board/widget/templete_card.dart';
import 'package:teacher_app/features/screen/profile/profile.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               RAppBar(
                leadingIcon: Icons.menu,
                title: 'DASHBOARD',
                actionIcon: Icons.notifications_active_outlined,
                personName: 'Raju Islam', subTitle: false, subTitleText: '', onPress: () {  },
              ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30
          ),
          child: Column(
            children: [
              SizedBox(
                height: height*0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TempleteCard(
                    height: height,
                    width: width,
                    name: 'Syllabus',
                    icon: Icons.book,
                  ),
                  TempleteCard(
                    height: height,
                    width: width,
                    name: 'Attendance',
                    icon: Icons.add,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TempleteCard(
                    height: height,
                    width: width,
                    name: 'Home Work',
                    icon: Icons.home_work,
                  ),
                  TempleteCard(
                    height: height,
                    width: width,
                    name: 'Result',
                    icon: Icons.output,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Teachers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 110,
                    child: ListView.builder(

                        shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 10
                              ),
                              child: Image.asset("asset/images/raju.jpg",height: 100,width: 100,),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ],
          ),
        )

              
            ],
          ),
        ),
      ),
    );
  }
}
