import 'package:flutter/material.dart';
import 'package:raven/Mainscreen/Mainscreen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();

  validateForm() {}

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
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 285.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      color: Colors.white,
                      iconSize: 25,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70.0),
                  child: Text(
                    "Enter \nVerification Code",
                    style: TextStyle(
                      fontSize: 32.7,
                      fontFamily: 'Oxygen',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 55.0),
                  child: const Text(
                    "we have sent a code to 07049532023",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Oxygen',
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 33.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60,
                        child: TextField(
                          controller: emailTextEditingController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 60,
                        child: TextField(
                          controller: emailTextEditingController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 60,
                        child: TextField(
                          controller: emailTextEditingController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 60,
                        child: TextField(
                          controller: emailTextEditingController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 330,
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {
                      // validateForm();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => MainScreen()));
                    },
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ))),
                    child: const Text(
                      "Verify",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
