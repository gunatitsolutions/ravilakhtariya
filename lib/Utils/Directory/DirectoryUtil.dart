import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Utils/Directory/directory_constants.dart';
import 'package:ravilakhtariya/Utils/SharedPreferences/shared_get_storage.dart';
import 'package:ravilakhtariya/Utils/permission_utils.dart';

class DirectoryUtil {
  static void createFolder() async {
      //var permissionGranted = await PermissionUtils.permissionForExternalStorage() && await PermissionUtils.permissionForStorage() && await PermissionUtils.permissionForAccessMediaLocation();
    var permissionGranted = await PermissionUtils.allPermissions();
      if(permissionGranted) {
        await checkPlatform().then((valueDirectory) async {
          if (valueDirectory != null) {
            await createAppDirectory(valueDirectory, appDirectoryName)
                ?.then((valueDirectoryPath) async {
              if (valueDirectoryPath.isNotEmpty) {
                await createSubDirectory('Pdf').then((value) {
                  //pdfDirectory = value;
                  appPDFDirectoryPath = value.path;
                  SharedPrefs.writeValue(PrefConstants.pdfPath,value.path);
                });
                 await createSubDirectory('.temp').then((value) {
                  // tempDirectory = value;
                   appTempDirectoryPath = value.path;
                  SharedPrefs.writeValue(PrefConstants.tempPath,value.path);
                });
                await createSubDirectory('Images').then((value) {
                  // tempDirectory = value;
                  appTempDirectoryPath = value.path;
                  SharedPrefs.writeValue(PrefConstants.imagePath,value.path);
                });

              }
            });
          }
        });
      }
  }

  static Future<String>? createAppDirectory(
      Directory appDocDir, String folderName) async {
    final Directory parentDirectory =
        Directory('${appDocDir.path}/$folderName');
    if (await parentDirectory.exists()) {
      //if folder already exists return path
      appDirectory = parentDirectory;
      return parentDirectory.path;
    } else {
      //if folder not exists create folder and then return its path
      final Directory directory =
          await parentDirectory.create(recursive: true);
      appDirectory = directory;
      return directory.path;
    }
  }

  static Future<Directory> createSubDirectory(String folderName) async {
    if (!(await appDirectory.exists())) {
      createFolder();

    }
    final parentDirectory = appDirectory;
    final Directory childDirectory =
        Directory('${parentDirectory.path}/$folderName/');
    if (await childDirectory.exists()) {
      //if folder already exists return path
      return childDirectory;
    } else {
      //if folder not exists create folder and then return its path
      final Directory directory = await childDirectory.create(recursive: true);
      return directory;
    }
  }

  static Future checkPlatform() async {
    var directory;
    if (Platform.isIOS || Platform.isMacOS) {
      await IOSDirectory.createFolder().then((directoryValue) {
        directory = directoryValue;
      });
    } else if (Platform.isAndroid) {
      await AndroidDirectory.createFolder().then((directoryValue) {
        directory = directoryValue;
      });
    } else if (Platform.isWindows) {
    } else {}
    return directory;
  }
}

class AndroidDirectory {
  static Future createFolder() async {
    Directory? directoryValue;
    await getExternalStorageDirectory().then((value) {
       String newPath = '${value?.path}';
      // List<String>? paths = value?.path.split('/');
      // for (int x = 1; x < (paths?.length ?? 0); x++) {
      //   String folder = paths![x];
      //   if (folder != 'Android') {
      //     newPath += '/$folder';
      //   } else {
      //     break;
      //   }
      // }
      directoryValue = Directory(newPath);
    }); //only for Android
    return directoryValue;
  }
}

class IOSDirectory {
  static Future createFolder() async {
    Directory directoryValue = await getApplicationDocumentsDirectory();
    return directoryValue;
  }
}
