import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:file_saver/file_saver.dart';

class HomeController extends GetxController {
  final Rx<GlobalKey<ScaffoldState>> _scaffoldKey =
      GlobalKey<ScaffoldState>().obs;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey.value;

  ScrollController scrollController = ScrollController();


  void downloadResumes() async {
  
    await FileSaver.instance.saveAs(name: 'RaviLakhtariyaResume',filePath: 'assets/ravilakhtariya.pdf',ext: 'pdf', mimeType: MimeType.pdf).then((value) {
      print(value);
    });
  }
}
