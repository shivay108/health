import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/widgets/running_card.dart';

import 'add_newmedicine.dart';
import '../../widgets/schedule_card.dart';
import '../../widgets/slider.dart';

class MedicineHomePage extends StatefulWidget {
  const MedicineHomePage({super.key});

  @override
  State<MedicineHomePage> createState() => _MedicineHomePageState();
}

class _MedicineHomePageState extends State<MedicineHomePage> {
  final List<String> schedule_title = [
    'Your Next Doses',
    'Your Previous Doses',
  ];
  final List<String> timing = [
    '@4:30 Pm',
    '@9:30 Am',
  ];
  final List<String> iconPath = [
    'assets/icons/right.png',
    'assets/icons/left.png',
  ];

  final List<String> imagePath = [
    'assets/icons/pills1.png',
    'assets/icons/test.png',
  ];
  bool _isRegisterPageVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Never miss a Medication again!',
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
                  child: _isRegisterPageVisible
                      ? Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isRegisterPageVisible = !_isRegisterPageVisible;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            'assets/icons/add_box.png',
                          ),
                        ),
                      ),
                         const SizedBox(width: 10,),
                         const Text(
                          'Profile Name/ Treatment Name',
                          style: TextStyle(
                            color: Color(0xFF18616c),
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                      ),
                      const SizedBox(width: 10,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isRegisterPageVisible = !_isRegisterPageVisible;
                          });
                        },
                        child: Image.asset('assets/icons/arrow_down.png'), // Replace with close icon
                      ),
                    ],
                  )
                      : Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 95.0),
                        child: Text(
                          'Add All Medications',
                          style: TextStyle(
                            color: Color(0xFF18616c),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 50,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isRegisterPageVisible = !_isRegisterPageVisible;
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
                height: _isRegisterPageVisible ? MediaQuery.of(context).size.height * 0.64: 0, // Adjust the height as needed
                width: MediaQuery.of(context).size.width,
                child: _isRegisterPageVisible
                    ? SingleChildScrollView(
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const NewMedicinePage(),
                    ),
                  ),
                )
                    : const SizedBox(),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ScheduleCard(
                        title: schedule_title[index],
                        timing: timing[index],
                        timing2: timing[index],
                        imageIconPath: iconPath[index],
                        imagePath: imagePath[index],
                      );
                    }),
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
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child:const Padding(
                    padding: EdgeInsets.only(left: 50.0,top: 5),
                    child: Text(
                      'All Your Running Medications',
                      style: TextStyle(
                        color: Color(0xFF18616c),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 2,
                  separatorBuilder: (context, index) => const SizedBox(height: 8), // Adjust the height as needed
                  itemBuilder: (context, index) {
                    return const RunningCard();
                  },
                ),
              ),
            ],
          ),
        ),
      );
  }
}
