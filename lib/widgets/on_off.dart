import 'package:flutter/material.dart';

class OnOffButton extends StatefulWidget {
  const OnOffButton({super.key});

  @override
  _OnOffButtonState createState() => _OnOffButtonState();
}

class _OnOffButtonState extends State<OnOffButton> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: Switch(
        value: _isSwitched,
        onChanged: (value) {
          setState(() {
            _isSwitched = value;
          });
        },
        activeColor: const Color(0xFF60ccdb), // color when switched on
        inactiveThumbColor: Colors.grey, // color when switched off
      ),
    );
  }
}

// Example Usage:
// In your widget tree, you can use this OnOffButton like this:
// OnOffButton(),
