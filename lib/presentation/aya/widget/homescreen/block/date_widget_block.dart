import 'package:flutter/material.dart';

class DateWidgetBlock extends StatefulWidget {
  const DateWidgetBlock({super.key});

  @override
  State<DateWidgetBlock> createState() => _DateWidgetBlockState();
}

class _DateWidgetBlockState extends State<DateWidgetBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 205, 232, 255),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(Icons.calendar_month), Text('Monday,May 12')],
                ),
                Row(
                  children: [
                    Icon(Icons.timer_outlined),
                    Text('2:00 Pm - 3:00 Pm')
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 6, 66, 93),
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 5, bottom: 5),
                      child: Text(
                        'Reschedule',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 6, 66, 93)),
                      )),
                ),
                MaterialButton(
                  height: 48,
                  color: const Color.fromARGB(255, 6, 66, 93),
                  minWidth: 170,
                  textColor: Colors.white,
                  onPressed: () {
                    // Do something when the button is pressed
                  },
                  child: Text(
                    'Join Session',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
