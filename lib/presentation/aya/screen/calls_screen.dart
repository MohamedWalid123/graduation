import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
            height: 35.0,
            width: 35.0,
            child: FloatingActionButton(
              onPressed: () {
                // Do something when the button is pressed
              },
              child: Icon(
                Icons.add_outlined,
                color: Color.fromARGB(255, 0, 70, 100),
              ),
              backgroundColor: Colors.white,
            )),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Calls',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.phone_outlined)
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(10),
                children: [
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Salma Khaled',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 0, 90),
                              width: 1.8,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                'From 4PM to 4bu.5 PM',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 34, 0, 90)),
                              )),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ADHD Patient',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 24, 60)),
                        ),
                        MaterialButton(
                          height: 32,
                          color: const Color.fromARGB(255, 0, 20, 48),
                          minWidth: 110,
                          textColor: Colors.white,
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: Text(
                            '+15',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Yasmin Ahmed',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 0, 90),
                              width: 1.8,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                'From 4PM to 4bu.5 PM',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 34, 0, 90)),
                              )),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ADHD Patient',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 24, 60)),
                        ),
                        MaterialButton(
                          height: 32,
                          color: const Color.fromARGB(255, 0, 20, 48),
                          minWidth: 110,
                          textColor: Colors.white,
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: Text(
                            '+15',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Mai Ahmed',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 0, 90),
                              width: 1.8,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                'From 4PM to 4bu.5 PM',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 34, 0, 90)),
                              )),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ADHD Patient',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 24, 60)),
                        ),
                        MaterialButton(
                          height: 32,
                          color: const Color.fromARGB(255, 0, 20, 48),
                          minWidth: 110,
                          textColor: Colors.white,
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: Text(
                            '+15',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hend Samir',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 0, 90),
                              width: 1.8,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                'From 4PM to 4bu.5 PM',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 34, 0, 90)),
                              )),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ADHD Patient',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 24, 60)),
                        ),
                        MaterialButton(
                          height: 32,
                          color: const Color.fromARGB(255, 0, 20, 48),
                          minWidth: 110,
                          textColor: Colors.white,
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: Text(
                            '+15',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Ahmed Ali',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 0, 90),
                              width: 1.8,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                'From 4PM to 4bu.5 PM',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 34, 0, 90)),
                              )),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ADHD Patient',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 24, 60)),
                        ),
                        MaterialButton(
                          height: 32,
                          color: const Color.fromARGB(255, 0, 20, 48),
                          minWidth: 110,
                          textColor: Colors.white,
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: Text(
                            '+15',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Aya Ahmed',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 0, 90),
                              width: 1.8,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                'From 4PM to 4bu.5 PM',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 34, 0, 90)),
                              )),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ADHD Patient',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 24, 60)),
                        ),
                        MaterialButton(
                          height: 32,
                          color: const Color.fromARGB(255, 0, 20, 48),
                          minWidth: 110,
                          textColor: Colors.white,
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: Text(
                            '+15',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Alaa Hassan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 0, 90),
                              width: 1.8,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                'From 4PM to 4bu.5 PM',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 34, 0, 90)),
                              )),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ADHD Patient',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 24, 60)),
                        ),
                        MaterialButton(
                          height: 32,
                          color: const Color.fromARGB(255, 0, 20, 48),
                          minWidth: 110,
                          textColor: Colors.white,
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: Text(
                            '+15',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Mariam Rashad',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 0, 90),
                              width: 1.8,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Text(
                                'From 4PM to 4bu.5 PM',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 34, 0, 90)),
                              )),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ADHD Patient',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 24, 60)),
                        ),
                        MaterialButton(
                          height: 32,
                          color: const Color.fromARGB(255, 0, 20, 48),
                          minWidth: 110,
                          textColor: Colors.white,
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: Text(
                            '+15',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
