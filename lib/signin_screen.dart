import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  var _passwordVisible;
  void initState() {
    _passwordVisible = true;


  }
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;


    String dropdownvalue = 'Item 1';

    // List of items in our dropdown menu


    var dropdownItems=[
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return
      Scaffold(
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
            padding: const EdgeInsets.only(top: 20,bottom: 20,left: 50,right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Center(child: Text("Welcome",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),
                Text("Institute",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(
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
                SizedBox(height: 5,),
                Text("Your Name",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(
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






                SizedBox(height: 5,),
                Text("Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(
                  width: 300,height: 40,
                  child: TextField(
                    style: TextStyle(color: Colors.white,),
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
                ),
                SizedBox(height: 10,),
                Text("Confirm Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(
                  width: 300,height: 40,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
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
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Text("Forgot Password",style: TextStyle(color: Colors.white),),

                  ],
                ),
                SizedBox(height: 20,),
                Center(
                  child: InkWell(
                      onTap: (){},
                      child: SizedBox(height: 50,width: 100,child: Center(child: Card(color: Colors.white,child: Center(child: Text("Sign Up")),)),)),
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
                DropdownButton(

                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  // Array list of items
                  items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value:value,
                      child: Text(value),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
