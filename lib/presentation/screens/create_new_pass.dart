import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/Forget_pass.dart';
import 'package:graduation/presentation/screens/log_in.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPassword();
}

class _NewPassword extends State<NewPassword> {
  bool _obscureText = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => FORGET()));
            },
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            )),title: Text("Forget password",style:
      TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontFamily: "Outfit"),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                            "Create a New Password",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 24,fontFamily: "Outfit"),
                          ),
                    ),

                  SizedBox(height: 15,),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          labelText: 'Write new password ',
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
                          labelText: 'Confirm  password',
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
                  ),SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: rememberMe,
                          onChanged: (bool? value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          },
                        ),
                        Text('Remember Me',style: TextStyle(fontSize: 14,color: AppColors.buttonColor,fontFamily: "Outfit"),),
                      ],
                    ),
                  ),SizedBox(height: 20,),
                  InkWell( onTap: (){},
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff15596F),
                              borderRadius: BorderRadius.circular(24)),
                          width: 386,
                          height: 46,
                          alignment: Alignment.center,
                          child: const Text("Verify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit")),
                        ),
                      ),
                  ),
                    ],
              ),


    );
  }
}
