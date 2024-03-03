import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/screens/LoginScreens/set_password_screen.dart';

import '../../widgets/otp_box.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
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
              "Submit the 4-digit code you got on your \nprovided number.",
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
              padding: const EdgeInsets.only(left: 47.0),
              child: Row(
                children: [
                  OTPBox(),
                  const SizedBox(
                    width: 38,
                  ),
                  OTPBox(),
                  const SizedBox(
                    width: 38,
                  ),
                  OTPBox(),
                  const SizedBox(
                    width: 38,
                  ),
                  OTPBox(),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PasswordScreen()));
                },
                child: Container(
                  width: 134,
                  height: 52,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2F88FF),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Next',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Didn't receive an OTP? Resend",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFF807C7C),
                    decoration: TextDecoration.underline),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 109.6),
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
