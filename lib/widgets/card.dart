import 'package:flutter/material.dart';
import 'package:medicine_app/widgets/on_off.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  String _selectedOption = 'Spring'; // Default selected option

  final List<String> _options = [
    'Spring',
    'Summer',
    'Happy',
    'Bliss',
    'Love',
    'Inspiration',
    'Upload'
  ];

  // Function to handle dropdown item selection
  void _onDropdownItemSelected(String? newValue) {
    setState(() {
      _selectedOption = newValue!;
    });

    // Perform backend actions based on the selected option
    _performBackendAction(newValue!);
  }

  // Function to simulate backend action
  void _performBackendAction(String option) {
    // Replace this with actual backend logic
    print('Backend action for $option');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(color: Colors.white),
      width: MediaQuery.of(context).size.width / 1.1,
      child: Card(
        elevation: 3,
        color: Colors.white,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 18.0,top: 18,bottom: 18),
              child: OnOffButton(),
            ),
            const SizedBox(
              width: 25,
            ),
             Flexible(
               child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                           ),
             ),
            const SizedBox(
              width: 15,
            ),
            DropdownButton<String>(
              value: _selectedOption,
              onChanged: _onDropdownItemSelected,
              items: _options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
