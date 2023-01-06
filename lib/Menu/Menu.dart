import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "George",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Oxygen',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 450,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("image/Profile.jpg"),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Fabunmi George",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: SizedBox(
                        width: 330,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            // validateForm();
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (c) => ()));
                          },
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white,
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ))),
                          child: const Text(
                            "Show More",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Oxygen',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 450,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("image/Profile.jpg"),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Fabunmi George",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 450,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("image/Profile.jpg"),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Fabunmi George",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 450,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("image/Profile.jpg"),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Fabunmi George",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
