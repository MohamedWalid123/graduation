import 'package:flutter/material.dart';
import 'package:graduation/app/app_colors.dart';
import 'package:graduation/presentation/screens/log_in.dart';
import 'package:graduation/presentation/screens/log_in2.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';
import 'package:graduation/presentation/screens/verify.dart';

class FORGET extends StatelessWidget {
  const FORGET({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => LoginScreen()));
              },
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
              )),
          backgroundColor: AppColors.background,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                new Container(
                  height: 350.0,
                  decoration: new BoxDecoration(
                    color: AppColors.background,
                    borderRadius: new BorderRadius.vertical(
                        bottom: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 250.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Center(
                    child: Column(children: [
                      Image.asset(
                        'assets/images/Forgetpass.png',
                        width: 306.59,
                        height: 340.0,
                      )
                    ]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Forget password??",
                    style: TextStyle(
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            Column(children: [
              Text(
                "Don’t worry ! it happens . please enter email address\nassociated with your account ... ",
                style: TextStyle(fontSize: 14, fontFamily: 'Outfit'),
              ),
              SizedBox(
                height: 20,
              ),Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      //     labelText: 'Email',
                      hintText: '@user@gmail.com'),
                ),
              ),
              SizedBox(height: 35,),
              InkWell(onTap: (){ Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => Verify()));},
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(16)),
                  width: 334,
                  height: 48,
                  alignment: Alignment.center,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Submit",
                            style: TextStyle(color: Colors.white, fontSize: 22,fontFamily: "Outfit")),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ]),
        ));
  }
}
