import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:medicine_app/widgets/schedule_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/module_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  int _selectedIndex = 0;
  //titles for bottom naviagtion bar
  final List<String> _titles = ['Home', 'Cart', 'Add', 'Settings', 'Comments', 'User'];

  //list of icons
  final List<String> _iconPaths = [
    'assets/icons/home.png',
    'assets/icons/cart.png',
    'assets/icons/plus.png',
    'assets/icons/setting.png',
    'assets/icons/comment.png',
    'assets/icons/user.png'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
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

  final List<String> iconPath =[
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
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: () {

          },
          icon: const Icon(
            Icons.menu,
            size: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(217, 217, 217, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  height: 110,
                  width: 270,
                  child: Column(
                    children: [
                      CarouselSlider.builder(
                        itemCount: 3,
                        itemBuilder: (context, index, realIndex) {
                          return buildDummyBackground();
                        },
                        options: CarouselOptions(
                            height: 90,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            onPageChanged: (index, reason) {
                              setState(() {
                                activeIndex = index;
                              });
                            }),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(child: buildIndicator()),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: () {
                        // Add functionality for the TextButton
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: const BorderSide(color: Colors.redAccent),
                          ),
                        ),
                        minimumSize:
                            MaterialStateProperty.all<Size>(const Size(90, 15)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(217, 217, 217, 1)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'Know More',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                      return ModuleCard(title: titles[index]);
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
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
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
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 3.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: const CircleBorder(
          side: BorderSide(color: Colors.black, width: 1.0),
        ),
        child: Image.asset(
          'assets/icons/qr.png',
          height: 34,
          width: 34,
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 1,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildIconButton(0),
            _buildIconButton(1),
            _buildIconButton(2),
            const SizedBox(width: 40,),
            _buildIconButton(3),
            _buildIconButton(4),
            _buildIconButton(5),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(int index) {
    bool isSelected = _selectedIndex == index;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset(
            _iconPaths[index],
            height: 20,
            width: 20,
            color: isSelected ? Colors.red : Colors.black,
          ),
          onPressed: () => _onItemTapped(index),
        ),
        Text(
          _titles[index],
          style: TextStyle(
            fontSize: 12,
            color: isSelected ? Colors.red : Colors.black,
          ), // Adjust the font size as needed
        ),
      ],
    );
  }

  Widget buildDummyBackground() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: const SlideEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.redAccent,
          dotWidth: 10.0,
          dotHeight: 10.0,
          spacing: 8.0,
        ),
      );
}
