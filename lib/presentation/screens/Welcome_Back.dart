import 'package:flutter/material.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 188.0),
                child: Stack(children: [ Image.asset("assets/images/circle.png",width: 315,height: 250,)]),
              ),
          Text("Welcome Back ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,fontFamily: "Outfit")),
          Text("Let’s create your account ",style: TextStyle(fontSize: 22,fontFamily: "Outfit")),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Full name',
                    ),
              ),
            ),
            SizedBox(
              height: 15,
            ),Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Email',
                   ),
              ),
            ),
            SizedBox(
              height: 15,
            ),Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Enter password',
                   ),
              ),
            ),
            SizedBox(
              height: 15,
            ),Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Confirm password',
                    ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff15596F),
                  borderRadius: BorderRadius.circular(24)),
              width: 325,
              height: 44,
              alignment: Alignment.center,
              child: const Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit")),
            ),SizedBox(height: 20,),
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
          ],
    ),
        ),

    );
  }
}
