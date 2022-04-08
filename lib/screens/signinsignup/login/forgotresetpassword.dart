import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ForgotResetPassword extends StatefulWidget {
  static const routeName = 'forgotresetpassword';

  const ForgotResetPassword({Key? key}) : super(key: key);

  @override
  _ForgotResetPasswordState createState() => _ForgotResetPasswordState();
}

class _ForgotResetPasswordState extends State<ForgotResetPassword> {
  //  Color accentPurpleColor = Color(0xFF6A53A1);
  //   Color primaryColor = Color(0xFF121212);
  //   Color accentPinkColor = Color(0xFFF99BBD);
  //   Color accentDarkGreenColor = Color(0xFF115C49);
  //   Color accentYellowColor = Color(0xFFFFB612);
  //   Color accentOrangeColor = Color(0xFFEA7A3B);
  //   TextStyle? createStyle(Color color) {
  //       ThemeData theme = Theme.of(context);
  //       return theme.textTheme.headline3?.copyWith(color: color);
  //   }

  // List<TextStyle?> otpTextStyles = [
  //     createStyle(accentPurpleColor),
  //     createStyle(accentYellowColor),
  //     createStyle(accentDarkGreenColor),
  //     createStyle(accentOrangeColor),
  //     createStyle(accentPinkColor),
  //     createStyle(accentPurpleColor),
  // ];

  bool emailTested = false;

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
                    "Forgot Password",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter details to reset password",
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
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 20.0),
                        //   child: Text(
                        //     'Otp sent on your registered email account, please check and enter the otp below.',
                        //     style: TextStyle(
                        //         fontSize: 22, color: Colors.green.shade900),
                        //   ),
                        // ),
                        const SizedBox(height: 10),
                        !emailTested
                            ? Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Email',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 55, 107, 56),
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        !emailTested
                            ? Container(
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
                                child: Container(
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
                              )
                            : SizedBox.shrink(),
                        const SizedBox(height: 10),
                        emailTested
                            ? Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                child: const Text(
                                  'OTP',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 55, 107, 56),
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        const SizedBox(height: 10),
                        emailTested
                            ? Container(
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
                                // child: Container(
                                //   padding: const EdgeInsets.all(10),
                                //   decoration: BoxDecoration(
                                //     border: Border(
                                //         bottom:
                                //             BorderSide(color: Colors.grey.shade200)),
                                //   ),
                                //   child: const TextField(
                                //     decoration: InputDecoration(
                                //         hintText: "Email",
                                //         hintStyle: TextStyle(
                                //           color: Colors.grey,
                                //           fontSize: 20,
                                //         ),
                                //         border: InputBorder.none),
                                //   ),
                                // ),
                                child: OtpTextField(
                                  numberOfFields: 6,
                                  borderColor: Colors.greenAccent,
                                  focusedBorderColor: Colors.greenAccent,
                                  showCursor: true,
                                  obscureText: false,
                                  autoFocus: true,
                                  filled: true,
                                  // showFieldAsBox: true,
                                  styles: [],
                                  showFieldAsBox: true,
                                  borderWidth: 4.0,
                                  //runs when a code is typed in
                                  onCodeChanged: (String code) {
                                    //handle validation or checks here if necessary
                                  },
                                  //runs when every textfield is filled
                                  onSubmit: (String verificationCode) {},
                                ),
                              )
                            : SizedBox.shrink(),
                        // #login
                        const SizedBox(height: 10),
                        emailTested
                            ? Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                child: const Text(
                                  'New password',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 55, 107, 56),
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        emailTested
                            ? Container(
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
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200)),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "New Password",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        const SizedBox(height: 10),
                        emailTested
                            ? Container(
                                // color: Colors.amber,
                                width: MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Confirm Password',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 55, 107, 56),
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        emailTested
                            ? Container(
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
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200)),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Confirm Password",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        // Container(
                        //   height: 50,
                        //   margin: const EdgeInsets.only(
                        //     // left: 50,
                        //     top: 50,
                        //   ),
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(50),
                        //       color: Colors.green[800]),
                        //   child: const Center(
                        //     child: Text(
                        //       "Submit",
                        //       style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 22,
                        //           fontWeight: FontWeight.bold),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                emailTested = true;
                              });
                            },
                            height: 45,
                            minWidth: 240,
                            shape: const StadiumBorder(),
                            color: Colors.green.shade700,
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        // #login SNS
                        // const Text(
                        //   "Login with SNS",
                        //   style: TextStyle(
                        //       color: Colors.grey, fontWeight: FontWeight.bold),
                        // ),
                        // const SizedBox(height: 30),
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Container(
                        //         height: 50,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(50),
                        //             color: Colors.blue),
                        //         child: const Center(
                        //           child: Text(
                        //             "Facebook",
                        //             style: TextStyle(
                        //                 color: Colors.white,
                        //                 fontWeight: FontWeight.bold),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     const SizedBox(width: 30),
                        //     Expanded(
                        //       child: Container(
                        //         height: 50,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(50),
                        //             color: Colors.red),
                        //         child: const Center(
                        //           child: Text(
                        //             "Google",
                        //             style: TextStyle(
                        //                 color: Colors.white,
                        //                 fontWeight: FontWeight.bold),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 20.0),
                        //   child: RichText(
                        //     text: TextSpan(
                        //       // text: 'Do not have account? ',
                        //       style: TextStyle(
                        //           fontSize: 22, color: Colors.green.shade900),
                        //       children: <TextSpan>[
                        //         TextSpan(
                        //             text: 'Forgot password!',
                        //             style:
                        //                 TextStyle(fontWeight: FontWeight.bold),
                        //             recognizer: TapGestureRecognizer()
                        //               ..onTap = () {
                        //                 print('Just testing Ram');
                        //                 // Navigator.pushNamed(context, "signup");
                        //               }),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'If remembered password,',
                              style: TextStyle(
                                  fontSize: 22, color: Colors.green.shade900),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Login!',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(context, "login");
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
