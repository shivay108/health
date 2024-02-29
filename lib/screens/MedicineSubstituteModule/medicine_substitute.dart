import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/widgets/slider.dart';

class MedicineSubstitute extends StatefulWidget {
  const MedicineSubstitute({super.key});

  @override
  _MedicineSubstituteState createState() => _MedicineSubstituteState();
}

class _MedicineSubstituteState extends State<MedicineSubstitute> {
  String selectedForm = 'Select Form';
  String selectedStrength = 'Select strength';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Set Your Alternate Medicine',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const SliderWidget(),
                const SizedBox(height: 20),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          '     ALTERNATE MEDICINE CHECKER',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        )),
                        Image.asset('assets/icons/down.png'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 350,
                  height: 35,
                  child: Center(
                    child: Text(
                      'Check the substitute of medicine',
                      style: GoogleFonts.poppins(
                        fontSize: 18, // You can adjust the font size as needed
                        fontWeight: FontWeight.w700, // Making the text bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            selectedForm,
                            style: GoogleFonts.poppins(
                                color: selectedForm == 'Select Form'
                                    ? Colors.black54
                                    : Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: PopupMenuButton<String>(
                            icon: Image.asset('assets/icons/down.png'),
                            itemBuilder: (BuildContext context) => [
                              const PopupMenuItem(
                                value: 'Tablet',
                                child: Text('Tablet'),
                              ),
                              const PopupMenuItem(
                                value: 'Capsule',
                                child: Text('Capsule'),
                              ),
                              const PopupMenuItem(
                                value: 'Injection',
                                child: Text('Injection'),
                              ),
                              const PopupMenuItem(
                                value: 'Cream',
                                child: Text('Cream'),
                              ),
                            ],
                            onSelected: (String value) {
                              setState(() {
                                selectedForm = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            selectedStrength,
                            style: GoogleFonts.poppins(
                                color: selectedStrength == 'Select Strength'
                                    ? Colors.black54
                                    : Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 20),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: PopupMenuButton<String>(
                            icon: Image.asset('assets/icons/down.png'),
                            itemBuilder: (BuildContext context) => [
                              const PopupMenuItem(
                                value: '10mg',
                                child: Text('10mg'),
                              ),
                              const PopupMenuItem(
                                value: '20mg',
                                child: Text('20mg'),
                              ),
                              const PopupMenuItem(
                                value: '50mg',
                                child: Text('50mg'),
                              ),
                              const PopupMenuItem(
                                value: '100mg',
                                child: Text('100mg'),
                              ),
                            ],
                            onSelected: (String value) {
                              setState(() {
                                selectedStrength = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  width: 350,
                  height: 35,
                  child: Center(
                    child: Text(
                      'By Medicine Name',
                      style: GoogleFonts.poppins(
                        fontSize: 18, // You can adjust the font size as needed
                        fontWeight: FontWeight.w700, // Making the text bold
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/search.png',
                            height: 30,
                            width: 30,
                          ),
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: "No medicine found",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                            // Handle search icon press
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 350,
                  height: 50,
                  child: Center(
                    child: Text(
                      'By Salt Name',
                      style: GoogleFonts.poppins(
                        fontSize: 18, // You can adjust the font size as needed
                        fontWeight: FontWeight.w700, // Making the text bold
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '                         Salt name',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w300),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/search.png',
                            height: 30,
                            width: 30,
                          ),
                          onPressed: () {
                            // Handle search icon press
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
