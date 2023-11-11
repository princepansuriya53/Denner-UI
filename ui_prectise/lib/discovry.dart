import 'package:flutter/material.dart';
import 'package:ui_prectise/show.dart';

class dec extends StatefulWidget {
  @override
  State<dec> createState() => _decState();
}

class dataitam {
  var img;
  String title;
  String txt;
  dataitam({required this.img, required this.title, required this.txt});
}

class _decState extends State<dec> {
  final List<dataitam> _itamset = [
    dataitam(img: "assest/bear.png", title: "Bars & Hotels", txt: "42 Place"),
    dataitam(img: "assest/shaif.jpg", title: "Fine Dining", txt: "15 Place"),
    dataitam(img: "assest/cafe.jpg", title: "Cafe", txt: "28 Place"),
    dataitam(img: "assest/futuf.jpeg", title: "Fast Food", txt: "28 Place"),
    dataitam(img: "assest/place.jpg", title: "Nearby", txt: "34 Place"),
    dataitam(
        img: "assest/burgur.jpg", title: "Featured Foods", txt: "34 Place"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: true,
        title: const Text(
          'Discovry',
          textScaleFactor: 1.6,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white24,
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: _itamset.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 350,
                  width: 100,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => showdata(
                                  img: _itamset[index].img,
                                  title: _itamset[index].title,
                                  txt: _itamset[index].txt,
                                )),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox.fromSize(
                            size: const Size.fromRadius(50),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(_itamset[index].img),
                            ),
                          ),
                          Text(
                            _itamset[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(_itamset[index].txt),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
