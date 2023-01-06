import 'package:flutter/material.dart';
import 'package:raven/Authentication/Loginscreen.dart';
import 'package:raven/Authentication/VerificationScreen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
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
                  padding: const EdgeInsets.only(right: 120.0),
                  child: Text(
                    "Enter \nyour number",
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Oxygen',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: const Text(
                    "you will recieve a 4 digit verification code",
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
                SizedBox(
                  width: 330,
                  child: TextField(
                    controller: emailTextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "+234",
                      hintText: "+234",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontFamily: 'Oxygen',
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontFamily: 'Oxygen',
                      ),
                    ),
                  ),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => VerificationScreen()));
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
                      "Continue",
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
                Text("or",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 47.0),
                      child: Text(
                        "already have an account !",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      child: const Text(
                        "Login",
                        style:
                            TextStyle(color: Colors.blue, fontFamily: 'Oxygen'),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) => const Loginscreen()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset("image/Google.png")),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset("image/Twitter.png")),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset("image/Facebook.png")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
