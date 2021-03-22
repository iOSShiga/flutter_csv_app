import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'load_csv_data.dart';



class AllCsvFilesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All CSV Files'),
      ),
      body: FutureBuilder(
future:
      ),
    );
  }

  Future<List<FileSystemEntity>> _getAllCsvFiles() async {
    final String directory = (await getApplicationSupportDirectory()).path;
    final path = "$directory/";
    final myDir = Directory(path);
    List<FileSystemEntity> _csvFiles;
    _csvFiles = myDir.listSync(recursive: true, followLinks: false);
    _csvFiles.sort((a, b) {
      return b.path.compareTo(a.path);
    });
    return _csvFiles;
  }

  }
