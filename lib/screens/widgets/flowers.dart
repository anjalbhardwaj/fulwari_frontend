import 'package:flutter/material.dart';

class FlowersList extends StatefulWidget {
  const FlowersList({Key? key}) : super(key: key);
  @override
  _FlowersListState createState() => _FlowersListState();
}

class _FlowersListState extends State<FlowersList> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Flowers List Page',
      style: TextStyle(
        fontSize: 35,
      ),
    );
  }
}
