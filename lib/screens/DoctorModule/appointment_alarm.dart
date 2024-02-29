import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/slider.dart';

class AppointmentAlarmScreen extends StatefulWidget {
  const AppointmentAlarmScreen({super.key});

  @override
  State<AppointmentAlarmScreen> createState() => _AppointmentAlarmScreenState();
}

class _AppointmentAlarmScreenState extends State<AppointmentAlarmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Never miss a Medication again!',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SliderWidget(),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            'assets/icons/alarm.png',
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Card(
              shadowColor: Colors.grey,
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Container(
                    padding:EdgeInsets.zero,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child:Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Radiology Appointment',
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 90.0),
                              Image.asset(
                                'assets/icons/set.png',
                                height: 30,
                                width: 30,
                              )
                            ],
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              Image.asset('assets/icons/location.png'),
                              const SizedBox(width: 8.0),
                              const Text(
                                'Nirman vihar - Near pillar no 60',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Image.asset('assets/icons/time.png',width: 25,height: 25,),
                              const SizedBox(width: 5.0),
                              Text(
                                '08:30 PM',
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Image.asset('assets/icons/date_range.png',width: 25,height: 25,),
                              const SizedBox(width: 5.0),
                              Text(
                                '28/11/23',
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(width: 4.0),
                              Image.asset('assets/icons/call.png',width: 25,height: 25,),
                              const SizedBox(width: 5.0),
                              Text(
                                '9199999999',
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[400], // Grey background color for gap
                    height: 3.5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        'In 30 Min ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor:
                        const Color.fromARGB(255, 217, 217, 217)),
                    child: const Text(
                      'Done',
                      style: TextStyle(color: Colors.black, fontSize: 28),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor:
                        const Color.fromARGB(255, 217, 217, 217)),
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.black, fontSize: 28),
                    )),
              )
            ],
          ),
          const SizedBox(height: 40,),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor:
                  const Color.fromARGB(255, 217, 217, 217)),
              child: const Text(
                'In Process -Snooze',
                style: TextStyle(color: Colors.black, fontSize: 28),
              )),
        ],
      ),
    );
  }
}
