import 'package:flutter/material.dart';

class BookeyList extends StatefulWidget {
  const BookeyList({Key? key}) : super(key: key);
  @override
  _BookeyListState createState() => _BookeyListState();
}

class _BookeyListState extends State<BookeyList> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Bookey Page',
      style: TextStyle(
        fontSize: 35,
      ),
    );
  }
}
