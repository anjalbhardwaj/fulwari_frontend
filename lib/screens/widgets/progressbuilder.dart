import 'package:flutter/material.dart';
//import 'package:getwidget/components/loader/gf_loader.dart';
//import 'package:getwidget/types/gf_loader_type.dart';

Widget BuildProgressIndicator({context, double top: 3.0, bool height: false}) {
  return Container(
    //color: Colors.green,
    width: double.infinity,
    padding: EdgeInsets.only(top: height ? 20 : 10),
    alignment: Alignment.topCenter,
    // height: (height == true) ? MediaQuery.of(context).size.height / 1.5 : 40,
    // height: (height == true) ? 30 : 40,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Center(
          child: Opacity(
            opacity: 1.0,
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    ),
  );
}
