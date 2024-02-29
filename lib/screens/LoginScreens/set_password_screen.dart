import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/screens/LoginScreens/login_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 248.0),
            child: Image.asset('assets/images/background2.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 80),
            child: Image.asset('assets/images/splash_img.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Health First',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF908F8F)),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Create Password below \nminimum 6 digit",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF908F8F)),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 327,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  border: Border.all(color: Colors.lightBlue),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    style: GoogleFonts.poppins(
                        color: Colors.purple,
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      hintText: 'Minimum 6 Digit Password',
                      contentPadding: const EdgeInsets.only(left: 40),
                      hintStyle: GoogleFonts.poppins(
                          color: const Color(0xFF4D4C4C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 327,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  border: Border.all(color: Colors.lightBlue),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    style: GoogleFonts.poppins(
                        color: Colors.purple,
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      hintText: 'Reenter Password',
                      contentPadding: const EdgeInsets.only(left: 40),
                      hintStyle: GoogleFonts.poppins(
                          color: const Color(0xFF4D4C4C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
              child: Container(
                width: 134,
                height: 52,
                decoration: BoxDecoration(
                    color: const Color(0xFF2F88FF),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Verify',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 135.3),
            child: Image.asset(
              'assets/images/bck3.png',
            ),
          ),
        ],
      ),
    );
  }
}
