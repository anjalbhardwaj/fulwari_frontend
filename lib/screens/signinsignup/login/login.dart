import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const routeName = 'login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.green.shade900,
          Colors.green.shade500,
          Colors.green.shade400,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            // #login, #welcome
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        // #email, #password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.green.shade200,
                                  blurRadius: 20,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: const Text(
                                  'Email',
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 55, 107, 56),
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade200)),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: const Text(
                                  'Password',
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 55, 107, 56),
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade200)),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        MaterialButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, "verifysignupemail");
                          },
                          height: 45,
                          minWidth: 240,
                          shape: const StadiumBorder(),
                          color: Colors.green.shade700,
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // #login
                        // Container(
                        //   height: 50,
                        //   margin: const EdgeInsets.symmetric(horizontal: 50),
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(50),
                        //       color: Colors.green[800]),
                        //   child: const Center(
                        //     child: Text(
                        //       "Login",
                        //       style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 22,
                        //           fontWeight: FontWeight.bold),
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(height: 30),
                        // #login SNS
                        // const Text(
                        //   "Login with SNS",
                        //   style: TextStyle(
                        //       color: Colors.grey, fontWeight: FontWeight.bold),
                        // ),
                        // const SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue),
                                child: const Center(
                                  child: Text(
                                    "Facebook",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red),
                                child: const Center(
                                  child: Text(
                                    "Google",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: RichText(
                            text: TextSpan(
                              // text: 'Do not have account? ',
                              style: TextStyle(
                                  fontSize: 22, color: Colors.green.shade900),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Forgot password!',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Just testing Ram');
                                      Navigator.pushNamed(
                                          context, "forgotresetpassword");
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Do not have account? ',
                              style: TextStyle(
                                  fontSize: 22, color: Colors.green.shade900),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Signup!',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(context, "signup");
                                      }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
