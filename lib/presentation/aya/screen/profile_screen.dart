import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/pageroute/availability_widget.dart';
import 'package:graduation/presentation/aya/pageroute/changePass.dart';
import 'package:graduation/presentation/aya/pageroute/create-call.dart';
import 'package:graduation/presentation/aya/pageroute/feedback_widget.dart';
import 'package:graduation/presentation/aya/pageroute/settings_widget.dart';
import 'package:graduation/presentation/aya/pageroute/termsOfUse.dart';
import 'package:graduation/presentation/aya/pageroute/wallet.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 110, right: 110),
                    child: Text(
                      'User Profile',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20, bottom: 15),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(63, 196, 196, 196),
                                width: 1))),
                    child: const ListTile(
                      leading: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/user.jpg'),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(
                            'Dr.Ahmed ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Icons.check_circle_outline,
                            size: 17,
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                      subtitle: Text('Neurologist'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.wallet,
                            color: Color.fromARGB(193, 0, 0, 129),
                            size: 30,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Wallet',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              MaterialButton(
                                minWidth: 1,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Wallet()));
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.settings,
                            color: Color.fromARGB(193, 0, 0, 129),
                            size: 30,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Account Settings',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              MaterialButton(
                                minWidth: 1,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const SettingsWidget()));
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.password,
                            color: Color.fromARGB(193, 0, 0, 129),
                            size: 30,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Change Password',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              MaterialButton(
                                minWidth: 1,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const ChangePassword()));
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.feed_outlined,
                            color: Color.fromARGB(193, 0, 0, 129),
                            size: 30,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Feedback after session',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              MaterialButton(
                                minWidth: 1,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const FeedBackWidget()));
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.call_outlined,
                            color: Color.fromARGB(193, 0, 0, 129),
                            size: 30,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Create New Call',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              MaterialButton(
                                minWidth: 1,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateCall()));
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.calendar_month,
                            color: Color.fromARGB(193, 0, 0, 129),
                            size: 30,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Avilability',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              MaterialButton(
                                minWidth: 1,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const AvailabilityWidget()));
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.check_box,
                            color: Color.fromARGB(193, 0, 0, 129),
                            size: 30,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Terms Of Use',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              MaterialButton(
                                minWidth: 1,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const TermsOfUse()));
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.logout_outlined,
                            color: Color.fromARGB(193, 0, 0, 129),
                            size: 30,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Log Out',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              MaterialButton(
                                minWidth: 1,
                                onPressed: () {
                                  //
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
