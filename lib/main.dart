import 'package:flutter/material.dart';
import 'package:flutter_csv_app/load_csv_data.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Csv Demo',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),

      home: MyHomePage(title: 'Flutter Csv Demo',),
    );
  }
}






class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildMaterialButton('Load all csv form phone storage', () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LoadCsvDataScreen())
              );
            }),
            _buildMaterialButton('Load csv form phone storage', () { }),
            _buildMaterialButton('Load and created csv', () { })
          ],
        ),
      ),
    );
  }
  Widget _buildMaterialButton(String title, VoidCallback onPressed) {
    return MaterialButton(onPressed: onPressed, child: Text(title),color: Colors.cyanAccent);
  }
}
