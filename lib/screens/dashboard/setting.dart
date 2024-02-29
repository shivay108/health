import 'package:flutter/material.dart';
import 'package:medicine_app/widgets/card.dart';
import 'package:medicine_app/widgets/data_card.dart';

import '../../widgets/on_off.dart';
import '../../widgets/slider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 0.67,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 55),
              const SliderWidget(),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Text(
                  'In App Purchase',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right:20),
                child: Column(
                  children: [
                    DataCard(
                      title: 'Upgrade to Premium',
                      imageUrl: 'assets/icons/crown.png',
                    ),
                    SizedBox(height: 3),
                    DataCard(
                      title: 'Restore Purchase',
                      imageUrl: 'assets/icons/refresh.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Text(
                  'Spread to the world',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 25.0,right:20),
                child: Column(
                  children: [
                    DataCard(
                      title: 'Rate the App',
                      imageUrl: 'assets/icons/star.png',
                    ),
                    SizedBox(height: 3),
                    DataCard(
                      title: 'Share the App',
                      imageUrl: 'assets/icons/share_forward_line.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Text(
                  'Reach to Us & Know More',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 25.0,right:20),
                child: Column(
                  children: [
                    DataCard(
                      title: 'E-mail Us/ Feedback',
                      imageUrl: 'assets/icons/mail.png',
                    ),
                    SizedBox(height: 3),
                    DataCard(
                      title: 'Privacy Policy',
                      imageUrl: 'assets/icons/hand.png',
                    ),
                    SizedBox(height: 3),
                    DataCard(
                      title: 'E-mail Us/ Feedback',
                      imageUrl: 'assets/icons/edit.png',
                    ),
                    SizedBox(height: 3),
                    DataCard(
                      title: 'Privacy Policy',
                      imageUrl: 'assets/icons/building.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  height: 2,
                  width: MediaQuery.of(context).size.width / 1.13,
                ),
              ),
              const SizedBox(height: 3),
              const Center(
                child: Text(
                  'Reminder alert and notification Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  height: 2,
                  width: MediaQuery.of(context).size.width / 1.13,
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Set the time of Pre alarm',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: CardWidget(title: 'Medicine & pill',),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      decoration: const BoxDecoration(color: Colors.white),
                      width: MediaQuery.of(context).size.width / 2.3,
                      child:  Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(left: 38.0),
                                child: Text(
                                  '15 Min',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/icons/access_time.png')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 45,
                      decoration: const BoxDecoration(color: Colors.white),
                      width: MediaQuery.of(context).size.width / 2.3,
                      child:  Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 38.0),
                              child: Text(
                                '30 Min',
                                style: TextStyle(
                                  color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/icons/access_time.png')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      decoration: const BoxDecoration(color: Colors.white),
                      width: MediaQuery.of(context).size.width / 2.3,
                      child:  Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 38.0),
                              child: Text(
                                'Set  Time',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/icons/access_time.png')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 45,
                      decoration: const BoxDecoration(color: Colors.white),
                      width: MediaQuery.of(context).size.width / 2.3,
                      child:  Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 38.0),
                              child: Text(
                                '30 Time',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/icons/access_time.png')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left:18.0),
                child: CardWidget(title: 'Appointment & schedule'),
              ),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left:25.0),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      decoration: const BoxDecoration(color: Colors.white),
                      width: MediaQuery.of(context).size.width / 2.8,
                      child:  const Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Padding(
                              padding: EdgeInsets.only(left: 15.0,top: 10),
                              child: Text(
                                'No of Pre date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                        ),
                      ),
                    const SizedBox(width: 35,),
                    Container(
                      height: 45,
                      decoration: const BoxDecoration(color: Colors.white),
                      width: MediaQuery.of(context).size.width / 2.4,
                      child:  Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 38.0),
                              child: Text(
                                'Day Time',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/icons/access_time.png')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left:18.0),
                child: CardWidget(title: 'Document & License Expiry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
