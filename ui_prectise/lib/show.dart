// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class showdata extends StatefulWidget {
  var img;
  String title;
  String txt;
  showdata({required this.img, required this.title, required this.txt});

  @override
  State<showdata> createState() => _showdataState();
}

class _showdataState extends State<showdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        height: 350,
        width: 300,
        child: Card(
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Image.asset(
                        widget.img,
                        height: 180,
                        width: 250,
                      ),
                    ))),
                Text(
                  widget.title,
                  textScaleFactor: 3,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.txt,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}
