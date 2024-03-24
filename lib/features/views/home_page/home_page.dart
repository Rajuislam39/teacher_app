import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon:
                            const Icon(Icons.menu,color: Colors.white,size: 30,)),
                            const Text("DASHBOARD",style: TextStyle(color: Colors.white,fontSize: 30),),
                          ],
                        ),

                        const Icon(Icons.notifications_active,color: Colors.white,size: 30,)
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child: Card(
                        shadowColor: Colors.black,
                        color: Colors.white,
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person,size: 40,),
                                Text("Raju Islam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("STD -12(B)")
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
