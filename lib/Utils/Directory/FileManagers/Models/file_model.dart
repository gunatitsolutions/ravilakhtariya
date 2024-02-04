import 'dart:typed_data';

import 'package:ravilakhtariya/Utils/UtilityDateTime.dart';

class FileModel {
  Uint8List? imageData;
  String? path;
  String? name;
  String? size;
  String? fileType;
  int? totalPages;
  DateTime? creationDate;
  DateTime? modifiedDate;
  DateTime? accessedDate;
  bool? isSelected;
  int? fileSize;

  FileModel({
    this.imageData,
    this.path,
    this.name,
    this.size,
    this.fileType,
    this.creationDate,
    this.modifiedDate,
    this.accessedDate,
    this.totalPages,
    this.isSelected,
    this.fileSize,
  });

  factory FileModel.fromJson(Map<String, dynamic> json) => FileModel(
    imageData: json['imageData'],
    path: json['path'],
    name: json['name'],
    size: json['size'],
    fileType: json['fileType'],
    totalPages: json['totalPages'],
    isSelected: json['isSelected'] ?? false,
    modifiedDate: TimeAgo.getOnlyDateForm(json['modifiedDate'] ?? DateTime.now()),
    accessedDate: TimeAgo.getOnlyDateForm(json['accessedDate'] ?? DateTime.now()),
    creationDate: TimeAgo.getOnlyDateForm(json['creationDate'] ?? DateTime.now()),
    fileSize: json['fileSize']
  );

  Map<String, dynamic> toJson() => {
    'imageData': imageData,
    'path': path,
    'ExpenseType': name,
    'size': size,
    'fileType': fileType,
    'totalPages': totalPages,
    'isSelected': isSelected,
    'modifiedDate': TimeAgo.getOnlyDateFormat(modifiedDate ?? DateTime.now()),
    'accessedDate': TimeAgo.getOnlyDateFormat(accessedDate ?? DateTime.now()),
    'creationDate': TimeAgo.getOnlyDateFormat(creationDate ?? DateTime.now()),
    'fileSize': fileSize,
  };
}