import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/widgets/profile_card.dart';
import '../../widgets/slider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Profile',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
         const SliderWidget(),
          const SizedBox(
            height: 5,
          ),
          const ProfileCard(),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 7),
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor:  const Color(0xFFC4C4C4),
                        foregroundColor: Colors.black,),
                    child: Row(
                      children: [
                        const Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E1E1E)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/icons/setting.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    )),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                        foregroundColor: Colors.black),
                    child: const Text(
                      'Alert tone',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E1E1E)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 190,
            height: 27,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.black),
              child: const Text(
                'Save Changes',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 130.0),
            child: Text(
              'Reach to us & Know More',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            height: 50,
            decoration: const BoxDecoration(color: Colors.white),
            width: MediaQuery.of(context).size.width / 1.1,
            child: Card(
              elevation: 3,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Image.asset(
                      'assets/icons/share_forward_line.png',
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    decoration:  const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(14),bottomRight: Radius.circular(14)),
                      color:  Color(0xFFC4C4C4),
                    ),
                    width: MediaQuery.of(context).size.width /
                        1.43, // Grey background color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10), // Adjust padding as needed
                    child: const Center(
                      child: Text(
                        "Share the app",
                        style: TextStyle(
                            color: Color(0xFF707084),
                            fontWeight: FontWeight.bold,
                            fontSize: 20), // Text color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
            const SizedBox(height: 10,),
            Container(
            height: 50,
                  decoration: const BoxDecoration(color: Colors.white),
                   width: MediaQuery.of(context).size.width / 1.1,
                     child: Card(
                                elevation: 3,
                                color: Colors.white,
                       child: Row(
                         children: [
                               Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                       child: Image.asset(
                                               'assets/icons/vector.png',
                       ),
                 ),
                           const SizedBox( width: 20,),
                           const Text(
                             "Give Us Your Feedback",
                             style: TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20), // Text color
                           ),
              ],
            ),
           ),
            ),
        ],
      ),
    );
  }
}
