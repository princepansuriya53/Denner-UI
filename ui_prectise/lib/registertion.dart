import 'package:flutter/material.dart';

class homenew extends StatefulWidget {
  @override
  State<homenew> createState() => _homenewState();
}

class _homenewState extends State<homenew> {
  final double horizonatal = 40;
  final double vertecalpadding = 25;
// list of smart device
  List mySmartdevice = [
    // Smart device ,iconPathSstus
    [const Icon(Icons.lightbulb), true],
    [const Icon(Icons.ac_unit), true],
    [const Icon(Icons.tv), true],
    [const Icon(Icons.autorenew_rounded), true],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.point_of_sale),
                Icon(Icons.person_2),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizonatal,
              vertical: vertecalpadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Welcome home'),
                Text(
                  'Prince Pansuriya',
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizonatal,
              vertical: vertecalpadding,
            ),
            child: const Text('Smart Device'),
          ),
          Expanded(
              child: GridView.builder(
            itemCount: mySmartdevice.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Container(color: Colors.blue),
              );
            },
          ))
        ],
      ),
    );
  }
}
