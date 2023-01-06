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
                const Padding(
                    padding: EdgeInsets.only(right: 285.0),
                    child: Text(
                      "George",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontSize: 20),
                    )),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: Image.asset(
                      "D:\Flutter Pro6jects\hybrid_chat\image\Profile.jpg"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
