import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewReminderPage extends StatefulWidget {
  const NewReminderPage({super.key});

  @override
  State<NewReminderPage> createState() => _NewReminderPageState();
}

class _NewReminderPageState extends State<NewReminderPage> {
  double _sliderValue = 1;
  late DateTime _startSelectedDate = DateTime.now();
  late DateTime _lastSelectedDate = DateTime.now().add(const Duration(days: 1));

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _startSelectedDate) {
      setState(() {
        _startSelectedDate = picked;
      });
    }
  }
  Future<void> _lastselectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startSelectedDate.add(const Duration(days: 1)),
      firstDate: _startSelectedDate.add(const Duration(days: 0)),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _lastSelectedDate && picked.isAfter(_startSelectedDate)) {
      setState(() {
        _lastSelectedDate = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          decoration: const BoxDecoration(color: Colors.white),
          width: MediaQuery.of(context).size.width / 1,
          child: Card(
            elevation: 3,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 5, bottom: 4, right: 12),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter the Water/Food ',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 7.0,
                    ),
                    alignLabelWithHint: true,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          shadowColor: Colors.grey,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Container(
                padding:EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'Set date',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 28.0),
                              child: Text(
                                'Start',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: [
                                _startSelectedDate == null
                                    ? Container()
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(left: 28.0),
                                        child: Text(
                                          DateFormat('dd/MM/yy').format(
                                              _startSelectedDate), // Format date as dd/MM/yy
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                const SizedBox(width: 15.0),
                                GestureDetector(
                                    onTap: () => _selectDate(context),
                                    child: Image.asset(
                                        'assets/icons/date_range.png')),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          width: 3,
                          decoration: BoxDecoration(
                            color: const Color(0xFF18616c).withOpacity(0.2),
                          ),
                        ),

                         Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Last',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: [
                                _lastSelectedDate == null
                                    ? Container()
                                    : Padding(
                                  padding:
                                  const EdgeInsets.only(left: 28.0),
                                  child: Text(
                                    DateFormat('dd/MM/yy').format(
                                        _lastSelectedDate), // Format date as dd/MM/yy
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15.0),
                                GestureDetector(
                                    onTap: () => _lastselectDate(context),
                                    child: Image.asset(
                                        'assets/icons/date_range.png')),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Card(
              elevation: 5,
              color: Colors.white,
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.7,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8))),
                child: const Padding(
                  padding: EdgeInsets.only(left: 18.0, top: 8.0),
                  child: Text(
                    'How Many Times a Day?',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.white,
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 3.7,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Center(
                  child: Text(
                    '${_sliderValue.toInt()}',
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 7, // Adjust track height here
            tickMarkShape: const RoundSliderTickMarkShape(),
            activeTickMarkColor: Colors.black,
            inactiveTickMarkColor: Colors.black,
          ),
          child: Slider(
            min: 1,
            max: 6,
            divisions: 5,
            value: _sliderValue,
            onChanged: (newValue) {
              setState(() {
                _sliderValue = newValue;
              });
            },
          ),
        ),
        Card(
          elevation: 5,
          color: Colors.white,
          child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    '08:30 am',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Image.asset('assets/icons/time.png'),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  height: 30,
                  width: 3,
                  decoration: BoxDecoration(
                    color: const Color(0xFF18616c).withOpacity(0.2),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    '02:30 pm',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Image.asset('assets/icons/time.png'),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  height: 30,
                  width: 3,
                  decoration: BoxDecoration(
                    color: const Color(0xFF18616c).withOpacity(0.2),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    '09:00 pm',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Image.asset('assets/icons/time.png'),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:12.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  backgroundColor: const Color(0xFF60ccdb),
                  padding: EdgeInsets.zero, // Set padding to zero
                  minimumSize: const Size(100, 40), // Set minimum size
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Delete It',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 3,
                backgroundColor: const Color(0xFF60ccdb),
                padding: EdgeInsets.zero, // Set padding to zero
                minimumSize: const Size(120, 40), // Set minimum size
              ),
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Add More',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Image.asset('assets/icons/add_circle_outline.png'),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 3,
                backgroundColor: const Color(0xFF60ccdb),
                padding: EdgeInsets.zero, // Set padding to zero
                minimumSize: const Size(90, 40), // Set minimum size
              ),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
