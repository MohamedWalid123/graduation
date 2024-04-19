import 'package:flutter/material.dart';

import '../widget/image_picker.widget.dart';

class AiScreen extends StatelessWidget {
  const AiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Machine Learning',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image(
                    image: AssetImage('assets/images/ai.png'),
                    width: 25,
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                  // Icon(Icons.manage_search_outlined)
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(children: [
                      Image(
                        image: AssetImage('assets/images/ai2.png'),
                        width: 348,
                        height: 289,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          'NOW , we help you to diagnose ADHD by determining if this person is infected or not :',
                          style: TextStyle(
                              fontSize: 15.5,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 1, 0, 55)),
                        ),
                      ),
                      ImagepickerWidget()
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
