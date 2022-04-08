import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pushp/screens/home/homepage.dart';

class SearchBrowse extends StatefulWidget {
  static const routeName = 'searchBrowse';
  const SearchBrowse();
  @override
  _SearchBrowseState createState() => _SearchBrowseState();
}

class _SearchBrowseState extends State<SearchBrowse> {
  int divideVal = 3;

  List florists = [
    {
      'flId': '01HpKgrShp03',
      'flLogoImg': 'assets/flowers/redrose.jpg',
      'flName': 'VK Flower Nursery',
      'flOpen': true,
      'flDescription':
          'This is best rose from North India, with herbal advantages.',
      'flProductTypes': [
        'flowers',
        'seedlings',
        'plants',
        'bookey',
        'decoration',
        'accessories'
      ],
      'flContact': '0123456789',
      'flEmail': 'abc@gmail.com',
      'flOwnerName': 'Mr. Sharda',
      'flOwnerImage': '',
    },
    {
      'flId': '01HpKgrShp03',
      'flLogoImg': 'assets/flowers/redrose.jpg',
      'flName': 'New Anu',
      'flOpen': true,
      'flDescription':
          'This is best rose from North India, with herbal advantages.',
      'flProductTypes': [
        'flowers',
        'seedlings',
        'plants',
        'bookey',
        'decoration',
        'accessories'
      ],
      'flContact': '0123456789',
      'flEmail': 'abc@gmail.com',
      'flOwnerName': 'Mr. Sharda',
      'flOwnerImage': '',
    },
    {
      'flId': '01HpKgrShp03',
      'flLogoImg': 'assets/flowers/redrose.jpg',
      'flName': 'Ahsdf sdjkfg',
      'flOpen': true,
      'flDescription':
          'This is best rose from North India, with herbal advantages.',
      'flProductTypes': [
        'flowers',
        'seedlings',
        'plants',
        'bookey',
        'decoration',
        'accessories'
      ],
      'flContact': '0123456789',
      'flEmail': 'abc@gmail.com',
      'flOwnerName': 'Mr. Sharda',
      'flOwnerImage': '',
    },
    {
      'flId': '01HpKgrShp03',
      'flLogoImg': 'assets/flowers/redrose.jpg',
      'flName': 'Rosdfgsdfjg sdnjkfnse',
      'flOpen': true,
      'flDescription':
          'This is best rose from North India, with herbal advantages.',
      'flProductTypes': [
        'flowers',
        'seedlings',
        'plants',
        'bookey',
        'decoration',
        'accessories'
      ],
      'flContact': '0123456789',
      'flEmail': 'abc@gmail.com',
      'flOwnerName': 'Mr. Sharda',
      'flOwnerImage': '',
    },
    {
      'flId': '01HpKgrShp03',
      'flLogoImg': 'assets/flowers/redrose.jpg',
      'flName': 'dfg ghtfghh',
      'flOpen': true,
      'flDescription':
          'This is best rose from North India, with herbal advantages.',
      'flProductTypes': [
        'flowers',
        'seedlings',
        'plants',
        'bookey',
        'decoration',
        'accessories'
      ],
      'flContact': '0123456789',
      'flEmail': 'abc@gmail.com',
      'flOwnerName': 'Mr. Sharda',
      'flOwnerImage': '',
    },
    {
      'flId': '01HpKgrShp03',
      'flLogoImg': 'assets/flowers/redrose.jpg',
      'flName': 'bfgbdf dfgjkngl',
      'flOpen': true,
      'flDescription':
          'This is best rose from North India, with herbal advantages.',
      'flProductTypes': [
        'flowers',
        'seedlings',
        'plants',
        'bookey',
        'decoration',
        'accessories'
      ],
      'flContact': '0123456789',
      'flEmail': 'abc@gmail.com',
      'flOwnerName': 'Mr. Sharda',
      'flOwnerImage': '',
    },
    {
      'flId': '01HpKgrShp03',
      'flLogoImg': 'assets/flowers/redrose.jpg',
      'flName': 'dfgdf dfghdfg',
      'flOpen': true,
      'flDescription':
          'This is best rose from North India, with herbal advantages.',
      'flProductTypes': [
        'flowers',
        'seedlings',
        'plants',
        'bookey',
        'decoration',
        'accessories'
      ],
      'flContact': '0123456789',
      'flEmail': 'abc@gmail.com',
      'flOwnerName': 'Mr. Sharda',
      'flOwnerImage': '',
    },
    {
      'flId': '01HpKgrShp03',
      'flLogoImg': 'assets/flowers/redrose.jpg',
      'flName': 'dghsfh fghfghrtfgh',
      'flOpen': true,
      'flDescription':
          'This is best rose from North India, with herbal advantages.',
      'flProductTypes': [
        'flowers',
        'seedlings',
        'plants',
        'bookey',
        'decoration',
        'accessories'
      ],
      'flContact': '0123456789',
      'flEmail': 'abc@gmail.com',
      'flOwnerName': 'Mr. Sharda',
      'flOwnerImage': '',
    },
  ];
  Timer? timer;
  dynamic textChange = 1;

  @override
  initState() {
    super.initState();

    timer =
        Timer.periodic(const Duration(seconds: 4), (Timer t) => updateText());
  }

  updateText() {
    if (textChange == 1) {
      setState(() {
        textChange = 2;
      });
    } else if (textChange == 2) {
      setState(() {
        textChange = 3;
      });
    } else if (textChange == 3) {
      setState(() {
        textChange = 4;
      });
    } else if (textChange == 4) {
      setState(() {
        textChange = 5;
      });
    } else if (textChange == 5) {
      setState(() {
        textChange = 6;
      });
    } else {
      setState(() {
        textChange = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(
      builder: (context, orientation) {
        return Container(
          width: MediaQuery.of(context).size.width,
          // color: Colors.blue,
          decoration: const BoxDecoration(
            image: DecorationImage(
              // image: NetworkImage(
              //   'https://i.pinimg.com/736x/8a/96/3c/8a963c3ac0025e051ee8d6e8ae0ffaec.jpg',
              // ),
              image: NetworkImage(
                'https://i.pinimg.com/originals/26/4a/fa/264afa220be8b35e1bd249f4239889e7.jpg',
              ),
              // image: NetworkImage(
              //   'http://7-themes.com/data_images/out/11/6805772-plain-green-backgrounds.jpg',
              // ),
              // image: NetworkImage(
              //   'http://7-themes.com/data_images/out/11/6805772-plain-green-backgrounds.jpg',
              // ),
              fit: BoxFit.fill,
              // height: MediaQuery.of(context).size.height,
            ),
          ),
          child: Container(
            // color: Colors.grey,
            // margin: const EdgeInsets.fromLTRB(0, 275, 0, 0),

            padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
            child: Column(
              children: [
                Container(
                    height: 105,
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 30),
                    child: textChange == 1
                        ? const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Send wishes with flowers now',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w900),
                            ),
                          )
                        : textChange == 2
                            ? const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Has Birthday',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            : textChange == 3
                                ? const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Are you celebrating',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                : textChange == 4
                                    ? const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Did you fall in Love?',
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.green,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      )
                                    : textChange == 5
                                        ? const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'happiest occasions with blooming flowers',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          )
                                        : const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'One of the best florists',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          )),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 3),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                          enabled: true,
                          readOnly: false,
                          textAlign: TextAlign.left,
                          // obscureText: true,
                          onChanged: (value) => {onSearchTextChange(value)},
                          // decoration: const InputDecoration(
                          //   border: InputBorder.none,
                          //   focusedBorder: InputBorder.none,
                          //   enabledBorder: InputBorder.none,
                          //   errorBorder: InputBorder.none,
                          //   disabledBorder: InputBorder.none,
                          //   hintText: "Search Product",
                          //   hintStyle: TextStyle(
                          //       color: Colors.black,
                          //       fontSize: 15,
                          //       fontWeight: FontWeight.w400),
                          // ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Enter your Location',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 155, 199, 105),
                                fontWeight: FontWeight.w300,
                                fontSize: 20),
                            //hintStyle: TextStyle(fontSize: 15),
                            contentPadding: EdgeInsets.all(8),
                            // border: OutlineInputBorder(),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Colors.transparent,
                            //     style: BorderStyle.solid,
                            //     width: 1,
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // divideVal > 3
                //     ? Flexible(
                //         child: ListView.builder(
                //           padding: const EdgeInsets.all(8),
                //           itemCount: florists.length,
                //           itemBuilder: (BuildContext context, int index) {
                //             return Container(
                //               height: 150,
                //               margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                //               color: Colors.transparent,
                //               child: Center(
                //                 child: Row(
                //                   children: [
                //                     Card(
                //                       clipBehavior: Clip.antiAlias,
                //                       shape: RoundedRectangleBorder(
                //                           borderRadius:
                //                               BorderRadius.circular(24)),
                //                       child: AspectRatio(
                //                         aspectRatio: 1,
                //                         child: Image.network(
                //                           'https://media.istockphoto.com/vectors/modern-kindergarten-and-nature-logo-vector-id1171656032?k=20&m=1171656032&s=612x612&w=0&h=voYSwhBJF0-mDMUdPk12hJiWflFO6CUtbpmbJOPET3Y=',
                //                         ),
                //                       ),
                //                     ),
                //                     Flexible(
                //                       child: Container(
                //                         margin: const EdgeInsets.only(left: 15),
                //                         width:
                //                             MediaQuery.of(context).size.width /
                //                                 1.5,
                //                         child: Column(
                //                           children: [
                //                             Text(
                //                               florists[index]['flName']
                //                                   .toString(),
                //                               overflow: TextOverflow.ellipsis,
                //                               style: const TextStyle(
                //                                 fontSize: 15,
                //                                 color: Colors.white,
                //                               ),
                //                             ),
                //                             // SizedBox(height: 20),
                //                             // Text(
                //                             //   searchData[index].pPrice.toString(),
                //                             //   maxLines: 2,
                //                             //   overflow: TextOverflow.ellipsis,
                //                             // )
                //                           ],
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             );
                //           },
                //         ),
                //       )
                //     : SizedBox.shrink()
                Container(
                  height: 70,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(
                          40), // fromHeight use double.infinity as width and 40 is the height
                    ),
                    onPressed: () {},
                    child: Text(
                      'Browse Now',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(
                          40), // fromHeight use double.infinity as width and 40 is the height
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (const HomePage()),
                        ),
                      );
                    },
                    child: Text(
                      'All Products',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
        // return Container(
        //   width: MediaQuery.of(context).size.width,
        //   height: MediaQuery.of(context).size.height,
        //   decoration: const BoxDecoration(
        //     color: Color(0xff7c94b6),
        //     image: DecorationImage(
        //       image:
        //           // orientation == Orientation.portrait
        //           //     ? const AssetImage("assets/images/r1.jpeg")
        //           //     :
        //           AssetImage("assets/images/r3.jpg"),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   child: const Center(
        //     child: CircularProgressIndicator(
        //       strokeWidth: 5,
        //       backgroundColor: Colors.white,
        //       valueColor:
        //           AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 10, 9, 9)),
        //       // value: _progress,
        //     ),
        //   ), /* add child content here */
        // );
      },
    ));
  }

  onSearchTextChange(dynamic val) {
    if (val != '' && val != null) {
      setState(() {
        divideVal = 9;
      });
    } else {
      setState(() {
        divideVal = 3;
      });
    }
  }
}
