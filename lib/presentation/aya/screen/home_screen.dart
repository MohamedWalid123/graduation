
import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/widget/homescreen/articles_widget.dart';
import 'package:graduation/presentation/aya/widget/homescreen/bar_chart.dart';
import 'package:graduation/presentation/aya/widget/homescreen/sick_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 250,
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Hello ,',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        'Dr:Ahmed',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 66, 102)),
                      ),
                    ],
                  ),
                  const ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/user.jpg'),
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 4 / 5,
                      height: 35,
                      child: TextField(
                        maxLines: 1,
                        cursorHeight: 20,
                        cursorWidth: 1,
                        showCursor: true,
                        cursorColor: Colors.black,
                        style: const TextStyle(fontSize: 17, height: 2),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.black,
                          ),
                          isDense: true,
                          hintStyle: const TextStyle(fontSize: 15.5),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.display_settings,
                      size: 30,
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: const [SickWidget(), BarChart(), ArticlesWidget()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
