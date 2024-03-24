import 'package:flutter/material.dart';
class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  var _passwordVisible =false;

  @override
  Widget build(BuildContext context) {
   final h=MediaQuery.of(context).size.height;
   final w=MediaQuery.of(context).size.width;

    return Scaffold(
          body: Center(
            child:
            Container(
              width: w/1.20,height:h/1.50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150),
                    // topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(150.0)),
                color:Color(0xffFF5733),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20,left: 50,right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5,),
                    const Center(child: Text("Welcome",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),)),
                    const SizedBox(height: 5,),
                    const Text("Institute",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    const SizedBox(
                      width: 300,height: 40,
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white,),
                        decoration: InputDecoration(
                          // hintText: "ID No.",
                          // hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)

                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Text("Your Name",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    const SizedBox(
                      width: 300,
                      height: 40,
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white,),
                        decoration: InputDecoration(
                          // hintText: "ID No.",
                          // hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)

                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            )
                        ),
                      ),
                    ),






                    const SizedBox(height: 5,),
                    const Text("Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 300,height: 40,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,),
                        obscureText: _passwordVisible,
                        obscuringCharacter: "*",
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          // Here is key idea
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },),
                            // hintText: "ID No.",
                            // hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)

                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Confirm Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 300,height: 40,
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        obscureText: _passwordVisible,
                        obscuringCharacter: "*",
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          // Here is key idea
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },),
                            // hintText: "ID No.",
                            // hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)

                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Text("Forgot Password",style: TextStyle(color: Colors.white),),

                      ],
                    ),
                    const SizedBox(height: 20,),
                    Center(
                      child: InkWell(
                          onTap: (){},
                          child: const SizedBox(height: 50,width: 100,child: Center(child: Card(color: Colors.white,child: Center(child: Text("Sign Up")),)),)),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                        GestureDetector(
                            onTap: (){},
                            child: const Text("Sign In",style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold),)),

                      ],
                    ),


                  ],
                ),
              ),
            ),
          ),
        );
  }
}
