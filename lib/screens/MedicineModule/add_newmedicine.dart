import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewMedicinePage extends StatefulWidget {
  const NewMedicinePage({Key? key}) : super(key: key);

  @override
  State<NewMedicinePage> createState() => _NewMedicinePageState();
}

class _NewMedicinePageState extends State<NewMedicinePage> {
  String? _selectedItem;
  double _sliderValue = 1;
  late DateTime _selectedDate = DateTime.now();
  int _medicineAmount = 0;

  void _incrementMedicine() {
    setState(() {
      _medicineAmount++;
    });
  }

  void _decrementMedicine() {
    setState(() {
      if (_medicineAmount > 0) {
        _medicineAmount--;
      }else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Value Can't be decremented Anymore"),
            duration: Duration(seconds: 2),
          ),
        );
      }
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
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
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, top: 5, bottom: 4),
                      child: Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ), // Background color grey
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Medicine name',
                            hintStyle: TextStyle(
                                color: Color(0xFF707084),
                                fontSize: 18), // Hint text
                            border: InputBorder.none, // Remove default border
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical:
                                  7.0, // Adjust vertical padding to center the hint text
                            ), // Adjust padding as needed
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icons/camera.png', // Replace this with your actual image path
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            elevation: 5,
            color: Colors.white,
            child: Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: const Center(
                child: Text(
                  ' Add Medicine Amount and Kind',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Card(
                elevation: 5,
                color: Colors.white,
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Center(
                        child: _medicineAmount == 0
                            ? const Text(
                          'Medicine Amount',
                          style: TextStyle(fontSize: 18),
                        )
                            : Text(
                          '$_medicineAmount',
                          style: const TextStyle(fontSize: 18),
                        ),),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Card(
                elevation: 5,
                color: Colors.white,
                child: Container(
                  height: 50,
                  width: 107,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          _decrementMedicine();
                        },
                        child: Image.asset(
                          'assets/icons/remove_circle_outline.png',
                          width: 45,
                          height: 70,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 25,
                        width: 3,
                        decoration: BoxDecoration(
                          color: const Color(0xFF18616c).withOpacity(0.2),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          _incrementMedicine();
                        },
                        child: Image.asset(
                          'assets/icons/add_circle_outline.png',
                          width: 45,
                          height: 70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Card(
                elevation: 5,
                color: Colors.white,
                child: Container(
                  height: 50,
                  width: 110,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: Row(
                    children: [
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              value: _selectedItem,
                              icon: Image.asset(
                                  'assets/icons/down.png'), // Customize the arrow icon here
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedItem = newValue;
                                });
                              },
                              items: <String>[
                                'Item 1',
                                'Item 2',
                                'Item 3',
                                'Item 4'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
          Card(
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  _selectedDate == null
                                      ? Container()
                                      : Padding(
                                          padding: const EdgeInsets.only(left:28.0),
                                          child: Text(
                                            DateFormat('dd/MM/yy').format(
                                                _selectedDate), // Format date as dd/MM/yy
                                            style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                  const SizedBox(width: 15.0),
                                  GestureDetector(
                                      onTap: () => _selectDate(context),
                                      child: Image.asset('assets/icons/date_range.png')),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 40,),
                          Container(
                            height: 80,
                            width: 3,
                            decoration: BoxDecoration(
                              color: const Color(0xFF18616c).withOpacity(0.2),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 28.0),
                                child: Text(
                                  'Last',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Padding(
                                padding: EdgeInsets.only(left: 28.0),
                                child: Text(
                                  '30/02/24',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              ],
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
                  child: const Row(
                    children: [
                      Text(
                        'Medicine will run for ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        '10-days ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
