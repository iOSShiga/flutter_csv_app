import 'package:flutter/material.dart';

class LoadCsvDataScreen extends StatelessWidget {

  final String path;

  LoadCsvDataScreen({Key key,  this.path}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CSV DATA"),
        ),
        body: Center(
            child: Text('Hello World')
        )
    );
  }

}