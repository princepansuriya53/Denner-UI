// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, camel_case_types
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class carsoulitam {
  final String tex;
  final String img;

  carsoulitam({required this.img, required this.tex});
}

class menu extends StatefulWidget {
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  final List<carsoulitam> _itam_carsual = [
    carsoulitam(
      img: "assest/1.jpeg",
      tex: "Thai Style",
    ),
    carsoulitam(
      img: "assest/2.jpeg",
      tex: 'PavBhaji',
    ),
    carsoulitam(
      img: "assest/3.jpg",
      tex: 'Misal_Pav',
    ),
    carsoulitam(
      img: "assest/4.jpeg",
      tex: 'Panner Handi',
    ),
    carsoulitam(
      img: "assest/5.jpg",
      tex: 'Gujarati Thali Special',
    ),
  ];
  int _curntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Welcome Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text('Hello'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 0),
              child: TextFormField(
                  decoration: const InputDecoration(
                hintText: "Search for restaurants...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                isDense: true,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: _itam_carsual.length,
                    itemBuilder: (BuildContext context, int index, realIndex) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(_itam_carsual[index].img),
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.high),
                            ),
                          ),
                          Positioned(
                            top: 165,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  backgroundBlendMode: BlendMode.darken),
                            ),
                          ),
                          Positioned(
                            top: 170,
                            left: 5,
                            child: Text(
                              _itam_carsual[index].tex,
                              softWrap: true,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,
                            ),
                          ),
                        ],
                      );
                    },
                    options: CarouselOptions(
                        autoPlay: true,
                        autoPlayCurve: Curves.easeOutExpo,
                        height: 205,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _curntIndex = index;
                          });
                        },
                        viewportFraction: 1),
                  ),
                  Positioned(
                    top: 180,
                    left: 280,
                    child: DotsIndicator(
                        decorator:
                            const DotsDecorator(activeColor: Colors.white),
                        dotsCount: _itam_carsual.length,
                        position: _curntIndex),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text('Most Popular',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: TextButton(
                onPressed: () {},
                child: const Text('See all'),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 180,
                      width: 180,
                      child: Card(
                        elevation: 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: SizedBox.fromSize(
                                      child: Image.asset('assest/burgur.jpg',
                                          height: 130, fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 85, top: 3),
                                  child: Column(children: [
                                    const Text('KFC Broadway',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('KFC Broadway',
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.3))),
                                  ]), //For Bottom text
                                ),
                              ]), //For Image contianer
                            ]), // Main Column
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      width: 180,
                      child: Card(
                        elevation: 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: SizedBox.fromSize(
                                      child: Image.asset('assest/burgur.jpg',
                                          height: 130, fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 85, top: 3),
                                  child: Column(children: [
                                    const Text('KFC Broadway',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('KFC Broadway',
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.3))),
                                  ]), //For Bottom text
                                ),
                              ]), //For Image contianer
                            ]), // Main Column
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      width: 180,
                      child: Card(
                        elevation: 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: SizedBox.fromSize(
                                      child: Image.asset('assest/burgur.jpg',
                                          height: 130, fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 85, top: 3),
                                  child: Column(children: [
                                    const Text('KFC Broadway',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('KFC Broadway',
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.3))),
                                  ]), //For Bottom text
                                ),
                              ]), //For Image contianer
                            ]), // Main Column
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
