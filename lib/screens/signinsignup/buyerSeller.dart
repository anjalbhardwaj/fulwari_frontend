import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyerSeller extends StatefulWidget {
  static const routeName = 'buyerseller';
  const BuyerSeller();
  @override
  _SignInSignUpPageState createState() => _SignInSignUpPageState();
}

class _SignInSignUpPageState extends State<BuyerSeller> {
  String dropdownValue = 'Usertype';
  List dropDownData = ['Usertype', 'Buyer', 'Seller'];
  final List<String> textList = ['Select Usertype', "Buyer", "Seller"];
  late String _currentItemSelected;

  @override
  void initState() {
    print('Buyer seller page----->');
    super.initState();
    _currentItemSelected = textList[0];
  }

  @override
  Widget build(BuildContext context) {
    var selectedValue;
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.teahub.io/photos/full/9-94111_desktop-green-background-green-wallpaper-hd-1080p.png"),
                  fit: BoxFit.cover)),
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Column(
              children: [
                // const Text(
                //   'Select Usertype',
                //   style: TextStyle(
                //     fontSize: 28,
                //     color: Colors.white,
                //     fontWeight: FontWeight.w800,
                //   ),
                // ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 12, 85, 12),
                    border: Border.all(
                      color: Color.fromARGB(255, 190, 181, 181),
                    ),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 50),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 50,
                  child: Center(
                    child: PopupMenuButton<String>(
                      color: Color.fromARGB(255, 12, 85, 12),
                      initialValue: 'Usertype',
                      itemBuilder: (context) {
                        return textList.map((str) {
                          return PopupMenuItem(
                            value: str,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, right: 20),
                              child: Text(
                                str,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        }).toList();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            _currentItemSelected,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                      onSelected: (v) {
                        setState(() {
                          print('!!!===== $v');
                          _currentItemSelected = v;
                        });
                      },
                    ),
                    // child: DropdownButton<String>(
                    //   dropdownColor: Color.fromARGB(255, 12, 85, 12),
                    //   // hint: Text(
                    //   //   'Usertype',
                    //   //   textAlign: TextAlign.center,
                    //   //   style: TextStyle(),
                    //   // ),
                    //   isExpanded: false,
                    //   value: dropdownValue,
                    //   icon: const Icon(
                    //     Icons.arrow_downward,
                    //     color: Colors.white,
                    //   ),
                    //   // elevation: 16,
                    //   style: const TextStyle(
                    //     fontSize: 25,
                    //   ),
                    //   underline: Container(
                    //     height: 2,
                    //     color: Color.fromARGB(255, 12, 85, 12),
                    //   ),
                    //   onChanged: (String? newValue) {
                    //     setState(() {
                    //       dropdownValue = newValue!;
                    //     });
                    //   },
                    //   items: <String>['Usertype', 'Buyer', 'Seller']
                    //       .map<DropdownMenuItem<String>>((String value) {
                    //     return DropdownMenuItem<String>(
                    //       value: value,
                    //       child: Text(
                    //         value,
                    //         style: TextStyle(color: Colors.white),
                    //       ),
                    //     );
                    //   }).toList(),
                    // ),
                  ),
                ),
                const Text(
                  'Already registered?',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 12, 85, 12),
                    border: Border.all(
                      color: Color.fromARGB(255, 190, 181, 181),
                    ),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 50,
                  // color: Color.fromARGB(255, 12, 85, 12),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.green.withOpacity(0.04);
                          if (states.contains(MaterialState.focused) ||
                              states.contains(MaterialState.pressed))
                            return Colors.lightGreen.withOpacity(0.12);
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: const Text(
                    'or',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 12, 85, 12),
                    border: Border.all(
                      color: Color.fromARGB(255, 190, 181, 181),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 50,
                  // color: Color.fromARGB(255, 12, 85, 12),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.green.withOpacity(0.04);
                          if (states.contains(MaterialState.focused) ||
                              states.contains(MaterialState.pressed))
                            return Colors.lightGreen.withOpacity(0.12);
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('signup');
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
