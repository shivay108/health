import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard(
      {Key? key,
      required this.title,
      required this.timing,
      required this.timing2,
      required this.imageIconPath, required this.imagePath})
      : super(key: key);

  final String title;
  final String timing;
  final String timing2;
  final String imageIconPath;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 120.0,
        height: 105.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: 90.0,
                height: 90.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    width: 5,
                    height: 5,
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
                width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 4.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text(
                        title,
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(width: 15.0),
                     Image.asset(
                      imageIconPath,
                      height: 30,
                      width: 30,
                      color: const Color(0xff18616c),
                    )
                  ],
                ),
                const SizedBox(
                    height: 8.0), // Add space between the first and second rows
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Row(
                    children: [
                      Text(
                        'Cyphen -D',
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        timing,
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        'Omip-D',
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                    height: 8.0), // Add space between the second and third rows
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Row(
                    children: [
                      Text(
                        timing2,
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
