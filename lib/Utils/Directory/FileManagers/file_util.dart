import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Utils/Directory/DirectoryUtil.dart';
import 'package:ravilakhtariya/Utils/SharedPreferences/shared_get_storage.dart';

class FileManager {
  static Future<String> readFile(
      {required Directory directory,
      String? filename,
      String? fileExtension}) async {
    String? text;
    try {
      var filePath = await getFilePathFromDirectory(
          directory: directory,
          filename: filename,
          fileExtension: fileExtension);
      final File file = File(filePath);
      text = await file.readAsString();
    } catch (e) {
      //print('Couldn't read file');
    }
    return text ?? '';
  }

  static Future<String> readFileString(String filePath) async {
    String? text;
    try {
      final File file = File(filePath);
      text = await file.readAsString();
      return text;
    } catch (e) {
      //   print('Couldn't read file');
      return '';
    }
  }

  static Future<String> getFilePathFromDirectory(
      {required Directory directory,
      String? filename,
      String? fileExtension}) async {
    if (!await directory.exists()) {
      String directoryName = directory.path.split('/').last;
      DirectoryUtil.createSubDirectory(directoryName).then((value) {
        return '${directory.path}${filename ?? 'tmp'}.${fileExtension ?? 'png'}';
      });
    }
    return '${directory.path}${filename ?? 'tmp'}.${fileExtension ?? 'png'}';
  }

  static Future<File?> saveFileInExternalStorage(
      {required Directory directory,
      String? newFileName,
      String? filePath,
      String? fileExtension}) async {
    if (filePath != null) {
      final file = File(filePath); //your file path
      var filePatha = await FileManager.getFilePathFromDirectory(
          directory: directory,
          filename: newFileName ?? 'temp1',
          fileExtension: fileExtension);
      final newFile = await file.copy(filePatha);
      await file.delete();
      return newFile;
    }
    return null;
  }

  static Future<String?> getFilePathFromDirectorys(Directory directory,
      {String? filename, String? fileExtension}) async {
    if (!await directory.exists()) {
      String directoryName = directory.path.split('/').last;
      DirectoryUtil.createSubDirectory(directoryName).then((value) {
        return '${directory.path}${filename ?? 'tmp'}.${fileExtension ?? 'png'}';
      });
    }
    return '${directory.path}${filename ?? 'tmp'}.${fileExtension ?? 'png'}';
  }

  static Future<File?> saveFileInExternalStorages(
      {String? newFileName, String? filePath, String? fileExtension}) async {
    if (filePath != null) {
      final file = File(filePath); //your file path
      var imgDirect = SharedPrefs.readStringValue(PrefConstants.imagePath);
      Directory imgDir = Directory(imgDirect);
      var filePatha = await FileManager.getFilePathFromDirectorys(imgDir,
          filename: newFileName ?? 'temp1',
          fileExtension:
              fileExtension); //FileManager.getFilePathFromDirectory(imageDirectory,fileName:newFileName ?? 'temp1',fileExtension: fileExtension);
      final newFile = await file.copy(filePatha ?? '');
      await file.delete();
      return newFile;
    }
    return null;
  }

  static Future<File?> saveFileInExternal(
      {required String tempPath, String? newFileName, String? filePath}) async {
    if (filePath != null) {
      final file = File(filePath); //your file path
      final newFile = await file.copy(tempPath);
      await file.delete();
      return newFile;
    }
    return null;
  }

  Future moveFiles() {
    // TODO: implement moveFiles
    throw UnimplementedError();
  }

  static Future<File?> renameFile(
      {String? newFileName, String? filePath}) async {
    final file = File(filePath ?? ''); //your file path
    String dir = p.dirname(file.path); //get directory
    String newPath = p.join(dir, '$newFileName.pdf'); //rename
    try {
      await file.rename(newPath).then((newFile) {
        return newFile;
      });
    } on FileSystemException {
      // if rename fails, copy the source file and then delete it
      final newFile = await file.copy(newPath);
      await file.delete();
      return newFile;
    }
    return null;
  }

  static Future<int?> deleteFile(String? filepath) async {
    try {
      final file = File(filepath ?? '');
      await file.delete().then((value) {
        return 1;
      });
    } catch (e) {
      return 0;
    }
    return null;
  }

  static DateTime getFileState(String path) {
    final stat = FileStat.statSync(path);
    return stat.modified;
  }
}
