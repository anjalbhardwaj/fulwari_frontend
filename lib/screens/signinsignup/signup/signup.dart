import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import './../../../controller/auth.dart';

class SignUp extends StatefulWidget {
  static const routeName = 'signup';
  const SignUp();
  @override
  _SignInSignUpPageState createState() => _SignInSignUpPageState();
}

class _SignInSignUpPageState extends State<SignUp> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  AuthModel? _authModel = AuthModel();
  String dropdownValue = 'Usertype';
  List dropDownData = ['Usertype', 'Buyer', 'Seller'];
  final List<String> textList = ['Select Usertype', "Buyer", "Seller"];
  late String _currentItemSelected;

  @override
  void initState() {
    print('Signup page----->');
    super.initState();
    _currentItemSelected = textList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [
                Colors.green.shade900,
                Colors.green.shade700,
                Colors.green.shade500,
              ])),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        // #signup_text
                        Text(
                          "Sign Up",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 32.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        // #welcome
                        Text(
                          "Welcome",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),

                      // #text_field
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        // height: MediaQuery.of(context).size.height * 0.3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.green.shade200,
                                  blurRadius: 20,
                                  spreadRadius: 10,
                                  offset: const Offset(0, 10))
                            ]),
                        child: Form(
                          key: globalFormKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: const Text(
                                  'Fullname',
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
                              const TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Fullname",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                height: 20,
                              ),
                              Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                height: 20,
                              ),
                              Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: const Text(
                                  'Phone',
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
                              TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: "Phone",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    )),
                              ),
                              Divider(
                                thickness: 0.5,
                                height: 10,
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
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),

                      // #signup_button
                      MaterialButton(
                        onPressed: () {
                          // Navigator.pushNamed(context, "verifysignupemail");
                          signUp();
                        },
                        height: 45,
                        minWidth: 240,
                        shape: const StadiumBorder(),
                        color: Colors.green.shade700,
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // #text
                      // const Text(
                      //   "Login with SNS",
                      //   style: TextStyle(
                      //       color: Colors.grey,
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      // const SizedBox(
                      //   height: 30,
                      // ),

                      // #buttons(facebook & github)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: const StadiumBorder(),
                            height: 45,
                            minWidth: MediaQuery.of(context).size.width * 0.28,
                            child: const Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.red,
                            shape: const StadiumBorder(),
                            height: 45,
                            minWidth: MediaQuery.of(context).size.width * 0.28,
                            child: const Text(
                              "Google",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          // MaterialButton(
                          //   onPressed: () {},
                          //   color: Colors.black,
                          //   shape: const StadiumBorder(),
                          //   height: 45,
                          //   minWidth: MediaQuery.of(context).size.width * 0.28,
                          //   child: const Text(
                          //     "Apple",
                          //     style: TextStyle(color: Colors.white),
                          //   ),
                          // ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'Already registered? ',
                            style: TextStyle(
                                fontSize: 22, color: Colors.green.shade900),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Login!',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, "login");
                                    }),
                            ],
                          ),
                        ),
                        // MaterialButton(
                        //   onPressed: () {},
                        //   height: 45,
                        //   minWidth: 240,
                        //   shape: const StadiumBorder(),
                        //   color: Colors.grey.shade500,
                        //   child: const Text(
                        //     "Login",
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 22,
                        //         fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  signUp() async {
    print('Signup screen function hits here--->');
    await _authModel!.signUpRequest();
  }
}
