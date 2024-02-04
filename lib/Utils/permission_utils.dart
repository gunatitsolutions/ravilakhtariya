import 'package:permission_handler/permission_handler.dart';

class PermissionUtils {
  static Future<bool> checkPermission(Permission permission) async {
    final status = await permission.request();
    if (status == PermissionStatus.granted) {
      return true;
    } else {
      return false;
    }
  }

  static Future allPermissions() async {
      Map<Permission, PermissionStatus> statuses = await [
       // Permission.manageExternalStorage,
        Permission.storage,
        Permission.accessMediaLocation,
        Permission.location,
        Permission.locationAlways,
        Permission.locationWhenInUse,
        Permission.mediaLibrary,
        Permission.notification
        //add more permission to request here.
      ].request();
      if(/*await Permission.manageExternalStorage.isGranted ||*/ await Permission.storage.isGranted ||
      await Permission.accessMediaLocation.isGranted) {
        return true;
      } else {
        return false;
      }
       // var arrayOfPermissionStatus = statuses.values
       //    .toList()
       //    .where((element) => !element.isGranted);
       //

  }

  static Future? requestPermission(Map<Permission, PermissionStatus> mapPermission) async {
      var valuePermission = false;
      mapPermission.keys.forEach((element) async {
         await openAppSettings().then((value) {
           valuePermission = value;
           return valuePermission;
         });
      });
    return valuePermission;
  }

  // static Future permissionForExternalStorage() async {
  //   if(await Permission.manageExternalStorage.isGranted == false) {
  //     return await Permission.manageExternalStorage.request();
  //   }
  //   return true;
  // }

  static Future permissionForStorage() async {
    if(await Permission.storage.isGranted == false) {
      return await Permission.storage.request();
    }
    return true;
  }

  static Future permissionForAccessMediaLocation() async {
    if(await Permission.accessMediaLocation.isGranted == false) {
      return await Permission.accessMediaLocation.request();
    }
    return true;
  }
}
