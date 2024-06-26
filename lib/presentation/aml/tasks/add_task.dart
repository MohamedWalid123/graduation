import 'package:flutter/material.dart';

class addTask extends StatefulWidget {
  const addTask({super.key});

  @override
  State<addTask> createState() => _addTaskState();
}

int index = 0;
bool status = true;
bool click_1 = true;
bool click_2 = true;
bool click_3 = true;

class _addTaskState extends State<addTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(
      "Create New Task",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    ),),

      body: Container(
        color: Color.fromRGBO(239, 241, 241, 0.965),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Schedule",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "12 October",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: input_field(
                title: " Tittle",

                hint: "Enter the Title",
                // widget: null,
              ),
            ),
            input_field(
              title: " Purpose",
              hint: "Enter the Purpose",
              // widget: null,
            ),
            Row(
              children: [
                Expanded(
                    child: input_field(
                  title: "Start Time",
                  hint: "Start",
                )),
                Container(width: 12),
                Expanded(
                    child: input_field(
                  title: "End Time",
                  hint: "End",
                )),
              ],
            ),
            /////////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 20, left: 8),
              child: Text(
                "Priority",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 52,
                        width: double.infinity,
                        child: Container(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor: click_1
                                    ? Color.fromARGB(255, 235, 233, 233)
                                    : Color.fromARGB(255, 61, 125, 177),
                              ),
                              onPressed: () {
                                setState(() {
                                  click_1 = !click_1;
                                });
                              },
                              child: Text(
                                "Low",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                        ),
                      ),
                    ),
                  ),
                  ////////////

                  ///////////////////////
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 52,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: click_2
                                  ? Color.fromARGB(255, 235, 233, 233)
                                  : Color.fromARGB(255, 61, 125, 177),
                            ),
                            onPressed: () {
                              setState(() {
                                click_2 = !click_2;
                              });
                            },
                            child: Text(
                              "Medium",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: click_3
                                  ? Color.fromARGB(255, 235, 233, 233)
                                  : Color.fromARGB(255, 61, 125, 177),
                            ),
                            onPressed: () {
                              setState(() {
                                click_3 = !click_3;
                              });
                            },
                            child: Text(
                              "High",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 10),
              child: input_field(
                title: " Description",
                hint: "Enter the Description",
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: SwitchListTile(
                title: Text(
                  "Reminder",
                  style: TextStyle(fontSize: 22),
                ),
                activeColor: Color.fromARGB(255, 61, 125, 177),
                inactiveThumbColor: Colors.grey,
                value: status,
                onChanged: (value) {
                  setState(() {
                    status = value;
                  });
                },
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
                width: 320,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: click_2
                        ? Color.fromARGB(255, 61, 125, 177)
                        : Color.fromARGB(255, 61, 125, 177),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                          margin: EdgeInsets.all(15),
                          child: Container(
                            child: AlertDialog(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              title: Center(
                                child: Text(
                                  "Great Job",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              content: Text("Your Task was added Successfully",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[700])),
                              backgroundColor:
                                  Color.fromARGB(255, 211, 216, 223),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              actions: [
                                Center(
                                  child: Container(
                                    width: 150,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    padding: EdgeInsets.only(top: 30),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        backgroundColor: click_2
                                            ? Color.fromARGB(255, 61, 125, 177)
                                            : Color.fromARGB(255, 61, 125, 177),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Back",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    child: Text(
                      "Create Task",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // color: Color.fromARGB(255, 61, 125, 177),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  void _changeItem(int value) {
    print(value);
    setState(() {
      index = value;
    });
  }
}

class input_field extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  // final Widget widget;

  const input_field({
    super.key,
    required this.title,
    required this.hint,
    this.controller,
    // required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 53,
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.only(left: 14),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.2),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  autocorrect: false,
                  cursorColor: Colors.grey,
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: hint,
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
