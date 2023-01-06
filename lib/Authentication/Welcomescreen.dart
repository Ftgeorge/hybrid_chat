import 'package:flutter/material.dart';
import 'package:raven/Authentication/Signupscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                const SizedBox(
                  height: 50,
                ),
                Image.asset("image/Loginscreen.png"),
                Padding(
                  padding: const EdgeInsets.only(right: 120.0),
                  child: Text(
                    "Let's \nSocialize",
                    style: TextStyle(
                      fontSize: 56,
                      fontFamily: 'Oxygen',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: const Text(
                    "now easily talk with friends",
                    style: TextStyle(
                      fontSize: 20,
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
                  width: 350,
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {
                      // validateForm();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => Signupscreen()));
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
                      "Sign up",
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => LoginScreen()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
