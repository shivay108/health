import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/slider.dart';

class WalkingTracker extends StatefulWidget {
  final int currentSteps;
  final int goalSteps;

  const WalkingTracker(
      {Key? key, required this.currentSteps, required this.goalSteps})
      : super(key: key);

  @override
  State<WalkingTracker> createState() => _WalkingTrackerState();
}

class _WalkingTrackerState extends State<WalkingTracker> {
  @override
  Widget build(BuildContext context) {
    double progress = widget.currentSteps / widget.goalSteps;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Running and Walking Tracker',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.directions_walk, size: 30),
              const SizedBox(height: 50),
              Text('${widget.currentSteps} Steps', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 120),
            ],
          ),
          const Padding(
            padding:
                EdgeInsets.only(bottom: 570), // Adjust this value as needed
            child: SizedBox(
              height: 180,
              child: SliderWidget(),
            ),
          ),
          SizedBox(
            width: 40,
            height: 150,
            child: Stack(
              children: [
                Transform.scale(
                  scale: 5.0, // Increase this value to increase the size
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 4,
                    backgroundColor: Color(0xFFD4D4D4),
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 1000, // Set the desired height here
                    child: Text(
                      '${(progress * 100).toInt()}%',
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 535,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Goal: ${widget.goalSteps}',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: 240, // Adjust this value to move the Row up or down
            left: 0, // Adjust this value to move the Row horizontally
            right: 0, // Adjust this value to move the Row horizontally
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/fire.png',
                            height: 40, width: 40),
                        Text(
                          '0 kcal',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Calories',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/location.png',
                            height: 40, width: 40),
                        Text(
                          '0 km',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Distance',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/clock.png',
                            height: 40, width: 40),
                        Text(
                          '0 min',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Time',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 440),
            child: Card(
              color: Colors.white,
              elevation: 10,
              child: Container(
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(12)),
                child:Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 4,),
                         Text(
                          'Total Steps',
                          style: GoogleFonts.poppins(fontSize:15,fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/walk.png',width: 55,height: 55,),
                            const SizedBox(width: 100),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '  0',
                                  style:
                                      TextStyle(color: Colors.red, fontSize: 24),
                                ),
                                Text(
                                  'Steps',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            const SizedBox(width: 100),
                            Image.asset(
                              'assets/images/right_arrow.png',
                              height: 30,
                              width: 30,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 660),
            child:Card(
              color: Colors.white,
              elevation: 10,
              child: Container(
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(12)),
                child:  Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 4,),
                      Text(
                        'Total Calories',
                        style: GoogleFonts.poppins(fontSize:15,fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/fire.png',width: 55,height: 55,),
                          const SizedBox(width: 100),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '  0',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24),
                              ),
                              Text(
                                'Steps',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(width: 100),
                          Image.asset(
                            'assets/images/right_arrow.png',
                            height: 30,
                            width: 30,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
