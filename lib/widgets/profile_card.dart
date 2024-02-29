import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 370.0,
        height: 235.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                margin: const EdgeInsets.only(bottom: 100),
                width: 100.0,
                height: 135.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/icons/test.png',
                    width: 5,
                    height: 5,
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10), // Adjust spacing between photo and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Name',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xFFC4C4C4)
                  ), // Rectangle box
                  const SizedBox(height: 5),
                  Text(
                    'Your Phone No',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                    color:  const Color(0xFFC4C4C4)
                  ), // Rectangle box
                  const SizedBox(height: 5),
                  Text(
                    'Your Mail id',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                    color:  const Color(0xFFC4C4C4)
                  ), // Rectangle box
                  const SizedBox(height: 5),
                  Text(
                    'Address',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on,color: Colors.purple,),
                      Container(
                        height: 25,
                        width: MediaQuery.of(context).size.width/2,
                        color:  const Color(0xFFC4C4C4)
                      ),
                    ],
                  ), // Rectangle box
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
