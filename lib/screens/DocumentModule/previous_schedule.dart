import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PreviousSchedule extends StatefulWidget {
  const PreviousSchedule({super.key});

  @override
  State<PreviousSchedule> createState() => _PreviousScheduleState();
}

class _PreviousScheduleState extends State<PreviousSchedule> {
  String _activeText = 'Active';
  String _selectedOption = ''; // Define dropdown options

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/document.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      'Driving Licence Renew',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 99.0),
                    Image.asset(
                      'assets/icons/set.png',
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Note -You need to go the RTOto',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/time.png',
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(width: 5.0),
                    Text(
                      '08:30 PM',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Image.asset(
                      'assets/icons/date_range.png',
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(width: 5.0),
                    Text(
                      '28/11/23',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Image.asset(
                      'assets/icons/call.png',
                      width: 25,
                      height: 25,
                    ),
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
          Container(
            color: Colors.grey[400], // Grey background color for gap
            height: 3.5, // Adjust gap height as needed
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Row(
              children: [
                const Text(
                  'Status ',
                  style: TextStyle(
                    color: Color(0xFF18616c),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 45,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: _activeText == 'Active'
                        ? const Color.fromARGB(255, 96, 204, 219)
                        : Colors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset:
                        const Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      _activeText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                PopupMenuButton<String>(
                  onSelected: (String value) {
                    setState(() {
                      _selectedOption = value;
                      if (_activeText == 'Active') {
                        _activeText = 'Suspended';
                      } else {
                        _activeText = 'Active';
                      }
                    });
                  },
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: _selectedOption,
                        child: Text(
                            _activeText == 'Active' ? 'Suspended' : 'Active'),
                      ),
                    ];
                  },
                  child: SizedBox(
                      width: 50, child: Image.asset('assets/icons/down.png')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
