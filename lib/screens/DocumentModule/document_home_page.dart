import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/screens/DocumentModule/new_schedule.dart';
import 'package:medicine_app/screens/DocumentModule/next_schedule.dart';
import 'package:medicine_app/screens/DocumentModule/previous_schedule.dart';

import '../../widgets/slider.dart';
class DocumentHomePage extends StatefulWidget {
  const DocumentHomePage({super.key});

  @override
  State<DocumentHomePage> createState() => _DocumentHomePageState();
}

class _DocumentHomePageState extends State<DocumentHomePage> {
  bool _isAppointementPageVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Never miss a Appointment again!',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
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
                  child: _isAppointementPageVisible
                      ? Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isAppointementPageVisible = !_isAppointementPageVisible;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            'assets/icons/add_box.png',
                          ),
                        ),
                      ),
                      const SizedBox(width: 90,),
                      const Text(
                        'Profile Name',
                        style: TextStyle(
                          color: Color(0xFF18616c),
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(width: 90,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isAppointementPageVisible = !_isAppointementPageVisible;
                          });
                        },
                        child: Image.asset('assets/icons/arrow_down.png'), // Replace with close icon
                      ),
                    ],
                  )
                      :Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 14.0),
                        child: Text(
                          'Set Reminder for document or Work',
                          style: TextStyle(
                            color: Color(0xFF18616c),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isAppointementPageVisible = !_isAppointementPageVisible;
                          });
                        },
                        child: Image.asset(
                          'assets/icons/add_box.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),  AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: _isAppointementPageVisible ? MediaQuery.of(context).size.height * 0.60: 0, // Adjust the height as needed
                width: MediaQuery.of(context).size.width,
                child: _isAppointementPageVisible
                    ? SingleChildScrollView(
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const NewSchedule(),
                    ),
                  ),
                )
                    : const SizedBox(),
              ),
              const SizedBox(
                height: 15,
              ),
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
                child: NextSchedule(),
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
                child: PreviousSchedule(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
