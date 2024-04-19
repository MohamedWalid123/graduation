import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/cubit/auth_cubit.dart';
import 'package:graduation/cubit/auth_state.dart';
import 'package:graduation/navigation_bar.dart';
import 'package:graduation/presentation/screens/Forget_pass.dart';
import 'package:graduation/presentation/screens/mybot.dart';
import 'package:graduation/presentation/screens/register_patient.dart';

class LoginDoc extends StatefulWidget {

  LoginDoc({super.key});

  @override
  State<LoginDoc> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginDoc> {
  bool _obscureText = true;
  bool rememberMe = false;
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<AuthCubit, AuthStates>(listener: (context, state) {
          if (state is LoginSuccessState) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Navigation()));
          }
          if (state is FailedToLoginState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Container(
                  alignment: Alignment.center,
                  child: Text(state.message),
                )));
          }
        }, builder: (context, state) {
          return Scaffold(
              backgroundColor: Color(0xff9D659B),
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
                  child: Column(children: [
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
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Center(
                              child: Text(
                                "Welcome",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    fontFamily: "Outfit"),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Form(
                            key: formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(hintText: 'email', border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),),

                                  validator: (input) {
                                    if (emailController.text.isNotEmpty) {
                                      return null;
                                    } else {
                                      return "email must not be empty";
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(hintText: 'password', border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
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
                                    ),),
                                  validator: (input) {
                                    if (passwordController.text.isNotEmpty) {
                                      return null;
                                    } else {
                                      return "password must not be empty";
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0,top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (builder)=>FORGET()));},
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
                                InkWell(onTap:(){
                                },
                                  child:  MaterialButton(height: 44,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                    onPressed: () {
                                      if (formKey.currentState!.validate() == true) {
                                        BlocProvider.of<AuthCubit>(context).login(
                                            email: emailController.text,
                                            password: passwordController.text);
                                      }
                                    },
                                    minWidth: double.infinity,
                                    color: AppColors.buttonColor,
                                    textColor: Colors.white,
                                    child: Text(state is LoginLoadingState
                                        ? 'Loading...'
                                        : "Login"),
                                  ),),
                                SizedBox(height: 10,),
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
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 48.0),
                                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                                    child: Row(children: [
                                      Text("Don’t have an account ?",style: TextStyle(fontSize: 12),),
                                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (builder)=>RegisterScreen ()));},
                                          child: Text(" Register Now",style: TextStyle(color:AppColors.buttonColor,fontSize: 12),))
                                    ],),
                                  ),
                                )  ],

                            ),
                          ),
                        )
                      ])
                    ])
                  ])));
        }));
  }
}