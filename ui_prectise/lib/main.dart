// ignore_for_file: depend_on_referenced_packages
import 'package:splash_view/splash_view.dart';
import 'package:flutter/material.dart';
import 'bottom_homepage.dart';
import 'loginpage.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(
    Myapp(),
  );
  print('***${storage.read('id')}');
}

final storage = GetStorage();

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      title: "Demo",
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SplashView(
      showStatusBar: true,
      duration: const Duration(seconds: 3),
      done: Done(
        storage.read('id') == null ? Login() : homepage1(),
      ),
      backgroundColor: Colors.blue,
      title: const Text(
        'VS Techno',
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
      loadingIndicator: const Padding(
        padding: EdgeInsets.only(top: 150),
        child: RefreshProgressIndicator(),
      ),
      logo: const FlutterLogo(size: 100),
    );
  }
}
