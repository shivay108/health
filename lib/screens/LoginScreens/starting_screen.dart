import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/screens/LoginScreens/mobile_verification_page.dart';
import 'package:medicine_app/screens/dashboard/naviagtion.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 248.0),
              child: Image.asset('assets/images/background2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 188.0),
              child: Image.asset('assets/images/tablets.png', width: 120),
            ),
            Image.asset('assets/images/doctor.png'),
            const SizedBox(height: 10),
            Text(
              'Welcome OkApna !',
              style: GoogleFonts.nunito(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 25),
            Text(
              '       Get the healthcare services and medicine from \n               '
              'your nearby as per your convenient.',
              style: GoogleFonts.nunito(
                  color: const Color(0xFF0D1747),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 25),
            Text(
              '       The Medicine, doctor, Lab and Other healthcare \n               '
              '     services with many utility tools.',
              style: GoogleFonts.nunito(
                  color: const Color(0xFF0D1747),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 176.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MobileVerPage()));
                },
                child: Container(
                  width: 165,
                  height: 59,
                  decoration: BoxDecoration(
                      color: const Color(0xFF0089FF),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 93),
              child: Image.asset(
                'assets/images/bck3.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
