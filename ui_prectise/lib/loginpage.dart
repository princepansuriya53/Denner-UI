// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:ui_prectise/bottom_homepage.dart';
import 'dart:convert';
import 'package:ui_prectise/main.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String pwd = '';
  final int _isindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 999),
      initialIndex: _isindex,
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Color.fromARGB(255, 45, 102, 202),
                  Color.fromARGB(255, 174, 43, 34),
                  Colors.redAccent,
                ],
              )),
            ),
            toolbarHeight: 80,
            elevation: 3,
            centerTitle: true,
            title: const Text("I FOOD", textScaleFactor: 2.2),
            bottom: TabBar(
              dividerColor: Colors.black,
              automaticIndicatorColorAdjustment: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  child: Column(
                    children: const [
                      Icon(Icons.lock),
                      SizedBox(height: 5),
                      Text('Login'),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: const [
                      Icon(Icons.person),
                      SizedBox(height: 5),
                      Text('Registration')
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Color.fromARGB(255, 45, 102, 202),
                    Color.fromARGB(255, 174, 43, 34),
                    Colors.redAccent,
                  ],
                )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 350,
                        width: 350,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48),
                            child: Image.asset('assest/food.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          onChanged: (value) {
                            email = value;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: "Email",
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.person,
                                color: Color.fromARGB(255, 134, 48, 48)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          onChanged: (value) {
                            pwd = value;
                          },
                          decoration: const InputDecoration(
                            hintText: "Password",
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.lock,
                                color: Color.fromARGB(255, 134, 48, 48)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                            OvalBorder(eccentricity: 0.8),
                          )),
                          onPressed: () {
                            singin();
                          },
                          child: const Text('Login'))
                    ],
                  ),
                ),
              ),
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Color.fromARGB(255, 45, 102, 202),
                      Color.fromARGB(255, 174, 43, 34),
                      Colors.redAccent
                    ],
                  )),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        width: 350,
                        child: SizedBox.fromSize(
                            size: const Size.fromRadius(50),
                            child: ClipRRect(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset("assest/burgur.jpg",
                                  fit: BoxFit.cover),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Fisrt Name",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Last Name",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: "Mobile number",
                              alignLabelWithHint: true,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              )),
                        ),
                      ),
                    ]),
                  ))
            ],
          )),
    );
  }

  void singin() async {
    http.Response res = await Authorepo.registerapi(email: email, pwd: pwd);

    print('${Apiurl.urlbase}?action=signin&email=$email&pwd=$pwd');

    var response = jsonDecode(res.body);

    var response1 = jsonDecode(res.body)["data"];

    setState(() {
      storage.write("id", response1[0]["Users_id"]);
    });
    print('/////${storage.read("id")}');

    print('-----${response1}');

    if (response["message"] == "Successfully Login") {
      ScaffoldMessenger.of(context)
          .showSnackBar(
            SnackBar(content: Text('${response["message"]}')),
          )
          .closed
          .then(
            (value) => Navigator.push(
                context, MaterialPageRoute(builder: (context) => homepage1())),
          );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${response["message"]}')),
      );
    }
  }
}

class Apiurl {
  static String urlbase = "https://vstechno.co.in/news/api/user.php";
}

class Authorepo {
  static Future registerapi({
    required email,
    required pwd,
  }) async {
    return await get(
        Uri.parse('${Apiurl.urlbase}?action=signin&email=$email&pwd=$pwd'));
  }
}
