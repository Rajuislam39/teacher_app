import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool valuefirst = false;
  var _passwordVisible;
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child:
        Container(
          width: w/1.20,height:h/1.50,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(150),
            // topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(150.0)),
            color:Color(0xffFF5733),
      ),
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Center(child: Text("Welcome",style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),)),
                SizedBox(height: 10,),
                Text("ID No.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white,fontSize: 20),
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
                SizedBox(height: 20,),
                Text("Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                TextField(
                  style: TextStyle(color: Colors.white,fontSize: 20),
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
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white,width: 2)

                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
    Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
                        focusColor: Colors.white,
        // hoverColor: Colors.white,
        value: valuefirst,
        onChanged: (bool? value) {
        setState(() {
        valuefirst = value!;
        });}),
        Text("Remember me",style: TextStyle(color: Colors.white),),
      ],
    ),


                    Text("Forgot Password",style: TextStyle(color: Colors.white),),

                  ],
                ),
                SizedBox(height: 20,),
                Center(
                  child: InkWell(
                    onTap: (){},
                      child: SizedBox(height: 50,width: 100,child: Center(child: Card(color: Colors.white,child: Center(child: Text("Login")),)),)),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                    GestureDetector(
                        onTap: (){},
                        child: Text("Signin Up",style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold),)),

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
