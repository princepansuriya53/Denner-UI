import 'package:flutter/material.dart';

class pro extends StatefulWidget {
  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  bool _tap = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        title: const Text('All Photos', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          build_card(),
          build_card(),
          build_card(),
          build_card(),
          build_card(),
          build_card(),
        ],
      )),
    );
  }

  Column build_card() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Stack(
                  children: const [
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                        )),
                    Positioned(
                      top: 33,
                      right: 30,
                      child: CircleAvatar(
                          radius: 8,
                          child: Icon(
                            Icons.add,
                            size: 10,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Shivaji Razey',
                    textScaleFactor: 1.2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Reviews,380 Followers',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 15),
                  ),
                  const Text(
                    'Gold Foodies',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.amber),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue), // Border color
                  color: Colors.white, // Button body color
                ),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20.0),
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 22),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.blue, // Text color
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
        Card(
          child: Image.network(
              'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill),
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                InkWell(
                  onTap: () => setState(() => _tap = !_tap),
                  child: Icon(
                    _tap ? Icons.thumb_up_alt_outlined : Icons.thumb_up_rounded,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(width: 20),
                const Icon(
                  Icons.insert_comment_outlined,
                  color: Colors.black,
                ),
                const SizedBox(width: 20),
                const Icon(Icons.send, color: Colors.black),
              ],
            ),
          ),
        )
      ],
    );
  }
}
