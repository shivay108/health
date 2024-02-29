import 'package:flutter/material.dart';
class DataCard extends StatefulWidget {
  const DataCard({super.key, required this.title, required this.imageUrl});

  final String title;
  final String imageUrl;


  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      decoration: const BoxDecoration(color: Colors.white),
      width: MediaQuery.of(context).size.width / 1,
      child: Card(
        elevation: 3,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Image.asset(
                widget.imageUrl,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(14),bottomRight: Radius.circular(14)),
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
              width: MediaQuery.of(context).size.width /
                  1.43, // Grey background color
              padding: const EdgeInsets.symmetric(
                  horizontal: 10), // Adjust padding as needed
              child:  Center(
                child: Text(
                  widget.title,
                    style: const TextStyle(
                      color: Color(0xFF707084),
                      fontWeight: FontWeight.bold,
                      fontSize: 20), // Text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
