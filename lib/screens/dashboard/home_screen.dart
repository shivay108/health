import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/screens/DocumentModule/document_home_page.dart';
import 'package:medicine_app/screens/MedicineModule/medicine_home_page.dart';
import 'package:medicine_app/screens/MedicineSubstituteModule/medicine_substitute.dart';
import 'package:medicine_app/screens/RunningTrackerModule/running_screen.dart';
import 'package:medicine_app/widgets/schedule_card.dart';
import '../../widgets/module_card.dart';
import '../../widgets/slider.dart';
import '../DoctorModule/doctor_homepage.dart';
import '../WaterReminderModule/water_reminder_homepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  final List<String> titles = [
    'Medicine & Pill Reminder',
    'Appointment Reminder',
    'Water and food Reminder',
    'Document Reminder',
    'Find Alternate medicine',
    'Running and walking tracker',
    'Health record & improvement'
  ];

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ready to assist & remind',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SliderWidget(),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 122,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            switch (index) {
                              case 0:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MedicineHomePage()),
                                );
                                break;
                              case 1:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DoctorHomePage()),
                                );
                                break;
                              case 2:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WaterReminderHomePage()),
                                );
                                break;
                              case 3:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DocumentHomePage()),
                                );
                                break;
                              case 4:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const MedicineSubstitute()),
                                );
                                break;
                              case 5:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const WalkingTracker(currentSteps: 0, goalSteps: 20)),
                                );
                                break;
                            }
                          },
                          child: ModuleCard(title: titles[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Your Schedule & Reminder',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22),
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
          ],
        ),
      ),
    );
  }
}
