import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  // const FiltersScreen({ Key? key }) : super(key: key);
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters Bar"),
      ),
      body: const Center(
        child: Text("Filters"),
      ),
    );
  }
}
