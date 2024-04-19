

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/cubit/auth_cubit.dart';
import 'package:graduation/cubit/auth_state.dart';
import 'package:graduation/navigation_bar.dart';
import 'package:graduation/presentation/screens/mybot.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

class RegisterScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthStates>(
        listener: (context,state){
          if(state is RegisterSuccessState){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Navigation()));
          }
          else if(state is FailedToRegisterState ){
            showDialog(
                context: context,
                builder: (context)=>AlertDialog(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                )
            );
          }
        },
        builder: (context,state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Form(
                key:formKey ,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 188.0),
                    child: Stack(children: [
                      Image.asset("assets/images/circle.png", width: 315, height: 250,)
                    ]),
                  ),
                  Text("Welcome Back ", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24, fontFamily: "Outfit")),
                  Text("Let’s create your account ",
                      style: TextStyle(fontSize: 22, fontFamily: "Outfit")),
                  SizedBox(height: 10,),
                  _textfieldItem(controller: nameController, hintText: "User name"),
                  SizedBox(height: 10,),
                  _textfieldItem(controller: emailController, hintText: "email"),
                  SizedBox(height: 10,),
                  _textfieldItem(controller: phoneController, hintText: "phone"),
                  SizedBox(height: 10,),
                  _textfieldItem(isSecure:true,controller: passwordController, hintText: "password"),
                  SizedBox(height: 10,),
                  MaterialButton(
                    minWidth: double.infinity,
                    elevation: 0,
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)
                    ),
                    color: AppColors.buttonColor,
                    onPressed: ()
                    {
                      if( formKey.currentState!.validate() == true )
                      {
                        BlocProvider.of<AuthCubit>(context).register(
                            email: emailController.text,
                            name: nameController.text,
                            phone: phoneController.text,
                            password: passwordController.text
                        );
                      }
                    },
                    child: FittedBox(fit:BoxFit.scaleDown,child: Text(state is RegisterLoadingState ? "Loading..." : "Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.5,color: Colors.white),)),
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
                        ), SizedBox(width: 20,),
                        InkWell(
                          child: Container(
                            height: 23,
                            width: 23,
                            child: Image.asset("assets/images/facebook.png"),
                          ),
                        ), SizedBox(width: 20,),
                        InkWell(onTap: () {},
                          child: Container(
                            height: 23,
                            width: 23,
                            child: Image.asset("assets/images/apple.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                ),
              ),
            ),

          );
        });
  }
}

Widget _textfieldItem({bool? isSecure,required TextEditingController controller ,required String hintText}){
  return TextFormField(
    controller: controller,
    validator: (input){
      if(controller.text.isEmpty)
      {
        return "$hintText must not be empty";
      }
      else{
        return null;
      }
    },
    obscureText: isSecure??false,
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25)),
      labelText: hintText,
    ),
  );
}


// class WelcomeBack extends StatelessWidget {
//   const WelcomeBack({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//           child: Column(children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 188.0),
//                 child: Stack(children: [ Image.asset("assets/images/circle.png",width: 315,height: 250,)]),
//               ),
//           Text("Welcome Back ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,fontFamily: "Outfit")),
//           Text("Let’s create your account ",style: TextStyle(fontSize: 22,fontFamily: "Outfit")),
//             SizedBox(height: 10,),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25)),
//                     labelText: 'Full name',
//                     ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25)),
//                     labelText: 'Email',
//                    ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25)),
//                     labelText: 'Enter password',
//                    ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25)),
//                     labelText: 'Confirm password',
//                     ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   color: Color(0xff15596F),
//                   borderRadius: BorderRadius.circular(24)),
//               width: 325,
//               height: 44,
//               alignment: Alignment.center,
//               child: const Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit")),
//             ),SizedBox(height: 20,),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   InkWell(
//                     child: Container(
//                       height: 23,
//                       width: 23,
//                       child: Image.asset("assets/images/Google logo.png"),
//                     ),
//                   ),  SizedBox(width: 20,),
//                   InkWell(
//                     child: Container(
//                       height: 23,
//                       width: 23,
//                       child: Image.asset("assets/images/facebook.png"),
//                     ),
//                   ),SizedBox(width: 20,),
//                   InkWell(onTap: (){},
//                     child: Container(
//                       height: 23,
//                       width: 23,
//                       child: Image.asset("assets/images/apple.png"),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//     ),
//         ),
//
//     );
//   }
// }
