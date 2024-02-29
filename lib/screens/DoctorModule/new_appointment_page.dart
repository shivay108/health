import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class NewAppointmentPage extends StatefulWidget {
  const NewAppointmentPage({super.key});

  @override
  State<NewAppointmentPage> createState() => _NewAppointmentPageState();
}

class _NewAppointmentPageState extends State<NewAppointmentPage> {
  late DateTime _startSelectedDate = DateTime.now();
  late DateTime _lastSelectedDate = DateTime.now().add(Duration(days: 1));

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
      initialDate: _startSelectedDate.add(Duration(days: 1)),
      firstDate: _startSelectedDate.add(Duration(days: 0)),
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
        const SizedBox(height: 20,),
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
                    padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 4, right: 12),
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
                          hintText: 'Appointment & Schedule name',
                          hintStyle: TextStyle(
                            color: Color(0xFF707084),
                            fontSize: 18,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 7.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                      'assets/icons/camera.png',
                    width: 25,
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
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
                    padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 4, right: 12),
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
                          hintText: 'Person Name',
                          hintStyle: TextStyle(
                            color: Color(0xFF707084),
                            fontSize: 18,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 7.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                    'assets/icons/p2.png',
                    width: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
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
                    padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 4, right: 12),
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
                          hintText: 'Person Contact No',
                          hintStyle: TextStyle(
                            color: Color(0xFF707084),
                            fontSize: 18,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 7.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                    'assets/icons/telephone.png',
                    width: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
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
                    padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 4, right: 12),
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
                          hintText: 'Person Location',
                          hintStyle: TextStyle(
                            color: Color(0xFF707084),
                            fontSize: 18,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 7.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                    'assets/icons/location.png',
                    width: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Card(
          shadowColor: Colors.grey,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                height: 110,
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
                        'Set date and time',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF18616c),
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
                                'Start Date',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: [
                                _startSelectedDate == null
                                    ? Container()
                                    : Padding(
                                  padding: const EdgeInsets.only(left:28.0),
                                  child: Text(
                                    DateFormat('dd/MM/yy').format(
                                        _startSelectedDate),
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
                        const SizedBox(width: 20,),
                        Container(
                          height: 80,
                          width: 3,
                          decoration: BoxDecoration(
                            color: const Color(0xFF18616c).withOpacity(0.2),
                          ),
                        ),
                        const SizedBox(width: 20,),
                         Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Start time',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 28.0),
                                  child: Text(
                                    '08:30 Am',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                  const SizedBox(width: 4,),
                                  Image.asset('assets/icons/time.png')
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[400],
                height: 3.5,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child:  Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0),
                          child: Text(
                            'Last Date',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            _lastSelectedDate == null
                                ? Container()
                                : Padding(
                              padding: const EdgeInsets.only(left:28.0),
                              child: Text(
                                DateFormat('dd/MM/yy').format(
                                    _lastSelectedDate),
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            GestureDetector(
                                onTap: () => _lastselectDate(context),
                                child: Image.asset('assets/icons/date_range.png')),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 50,
                      width: 3,
                      decoration: BoxDecoration(
                        color: const Color(0xFF18616c).withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Last time',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 28.0),
                              child: Text(
                                '08:30 Am',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            const SizedBox(width: 4,),
                            Image.asset('assets/icons/time.png')
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
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(100, 40),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Delete It',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
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
                padding: EdgeInsets.zero,
                minimumSize: const Size(120, 40),
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
                        fontSize: 16,
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
                padding: EdgeInsets.zero,
                minimumSize: const Size(90, 40),
              ),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
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
