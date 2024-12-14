import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Utils/Directory/file_downloader.dart';

class HomeController extends GetxController {
  final _scaffoldKey = GlobalKey<ScaffoldState>().obs;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey.value;

  final scrollController = ScrollController();

  void downloadResumes() async {
    if (kIsWeb) {
      await FileDownloader.downloadFile();
    }
  }
}
