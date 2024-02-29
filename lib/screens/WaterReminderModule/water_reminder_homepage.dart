import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/screens/WaterReminderModule/new_water_reminder_page.dart';
import 'package:medicine_app/screens/WaterReminderModule/previous_reminder.dart';

import '../../widgets/slider.dart';
import 'next_reminder.dart';

class WaterReminderHomePage extends StatefulWidget {
  const WaterReminderHomePage({super.key});

  @override
  State<WaterReminderHomePage> createState() => _WaterReminderHomePageState();
}

class _WaterReminderHomePageState extends State<WaterReminderHomePage> {
  bool _isDietPageVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Will not Miss Your Diet Again!',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SliderWidget(),
            const SizedBox(
              height: 15,
            ),
            Material(
              elevation: 5,
              shadowColor: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: _isDietPageVisible
                    ? Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDietPageVisible = !_isDietPageVisible;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset(
                          'assets/icons/add_box.png',
                        ),
                      ),
                    ),
                    const SizedBox(width: 100,),
                    const Text(
                      'Profile Name',
                      style: TextStyle(
                        color: Color(0xFF18616c),
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(width: 80,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDietPageVisible = !_isDietPageVisible;
                        });
                      },
                      child: Image.asset('assets/icons/arrow_down.png'), // Replace with close icon
                    ),
                  ],
                )
                    :Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Schedule Water and  Food Intake',
                        style: TextStyle(
                          color: Color(0xFF18616c),
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 55,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDietPageVisible = !_isDietPageVisible;
                        });
                      },
                      child: Image.asset(
                        'assets/icons/add_box.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: _isDietPageVisible ? MediaQuery.of(context).size.height * 0.47: 0, // Adjust the height as needed
              width: MediaQuery.of(context).size.width,
              child: _isDietPageVisible
                  ? SingleChildScrollView(
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const NewReminderPage(),
                  ),
                ),
              )
                  : const SizedBox(),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 28.0),
                  child: Text(
                    'Next Schedule',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/right.png',
                  width: 30,
                  height: 30,
                  color: const Color(0xff18616c),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 11.0,right: 10.0),
              child: NextReminder(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 28.0),
                  child: Text(
                    'Previous Schedule',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/left.png',
                  width: 30,
                  height: 30,
                  color: const Color(0xff18616c),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 11.0,right: 10.0),
              child: PreviousReminder(),
            ),
          ],
        ),
      ),
    );
  }
}
