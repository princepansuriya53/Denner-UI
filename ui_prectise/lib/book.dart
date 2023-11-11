import 'dart:ui';
import 'package:flutter/material.dart';

class bookmark extends StatefulWidget {
  @override
  State<bookmark> createState() => _bookmarkState();
}

class _bookmarkState extends State<bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          heightFactor: 50,
          widthFactor: 80,
          child: GestureDetector(
            behavior: HitTestBehavior.deferToChild,
            onTap: () {
              _openAnimationDialog(context);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Touch !!', textScaleFactor: 3),
                Image.network(
                    'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill),
              ],
            ),
          )),
    );
  }
}

void _openAnimationDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "",
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation, secondaryAnimation) {
      return Container();
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.1, end: 1.0).animate(animation),
          child: const AlertDialog(
            title: Text('Thanks'),
            content: Text('Press again !!'),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                borderSide: BorderSide.none),
          ),
        ),
      );
    },
  );
}
