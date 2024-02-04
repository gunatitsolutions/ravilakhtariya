import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final Rx<GlobalKey<ScaffoldState>> _scaffoldKey =
      GlobalKey<ScaffoldState>().obs;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey.value;

  ScrollController scrollController = ScrollController();
}
