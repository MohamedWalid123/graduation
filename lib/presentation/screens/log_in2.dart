import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/Forget_pass.dart';
import 'package:graduation/presentation/screens/log_in.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

class LOGIN2 extends StatefulWidget {
  const LOGIN2({super.key});

  @override
  State<LOGIN2> createState() => _LOGIN2State();
}

class _LOGIN2State extends State<LOGIN2> {
  bool _obscureText = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xff9D659B),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => FORGET()));
            },
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            )),
        backgroundColor: Color(0xff9D659B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  child: Image.asset("assets/images/login2.png"),
                ),
              ),
            ),
             Stack(children: [
                Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Center(
                          child: Text(
                            "Welcome",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 24,fontFamily: "Outfit"),
                          )),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            labelText: 'Email',
                            hintText: 'Enter valid email id as abc@gmail.com'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 0),
                        child: TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            labelText: 'Password',
                            hintText: 'Enter secure password',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                          // Other TextFormField properties go here
                        )
                      //validatePassword,        //Function to check validation
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0,top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(onTap: (){},
                              child: Text("Forget Passwoed?",style: TextStyle(color: Color(0xff15596F)))),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: rememberMe,
                          onChanged: (bool? value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          },
                        ),
                        Text('Remember Me'),
                      ],
                    ),SizedBox(height: 20,),
                    InkWell(onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff15596F),
                            borderRadius: BorderRadius.circular(24)),
                        width: 320,
                        height: 44,
                        alignment: Alignment.center,
                        child: const Text("Sign In ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              height: 23,
                              width: 23,
                              child: Image.asset("assets/images/Google logo.png"),
                            ),
                          ),  SizedBox(width: 20,),
                          InkWell(
                            child: Container(
                              height: 23,
                              width: 23,
                              child: Image.asset("assets/images/facebook.png"),
                            ),
                          ),SizedBox(width: 20,),
                          InkWell(onTap: (){},
                            child: Container(
                              height: 23,
                              width: 23,
                              child: Image.asset("assets/images/apple.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Row(children: [
                        Text("Don’t have an account ?",style: TextStyle(fontSize: 16),),
                        InkWell(onTap: (){},
                            child: Text(" Register Now",style: TextStyle(color:AppColors.buttonColor,fontSize: 16),))
                      ],),
                    )  ],
                ),

              ]),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:graduation/presentation/screens/log_in.dart';
//
// class InfoScreen extends StatefulWidget {
//   const InfoScreen({super.key});
//
//   @override
//   State<InfoScreen> createState() => _InfoScreenState();
// }
//
// class _InfoScreenState extends State<InfoScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: InkWell(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (builder)=>LOGIN()));},
//             child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,)),
//         backgroundColor: Color(0xff9D659B),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal:0 ),
//             child: Container(
//               height: 130,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Color(0xff9D659B),
//                 borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(50),
//                   bottomLeft: Radius.circular(50),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0xAA6EB1E6),
//                     offset: Offset(9, 9),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//               alignment: Alignment.center,
//               child: Image.asset("assets/images/login2.png")
//             ),
//
//               ) ])
//     );
//   }
// }
