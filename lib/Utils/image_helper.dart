import 'dart:convert';
import 'dart:typed_data';

class ImageHelper {
  static Uint8List imageFromBase64String(String base64String) =>
      base64Decode(base64String);

  static Uint8List dataFromBase64String(String base64String) =>
      base64Decode(base64String);

  static String base64String(Uint8List data) => base64Encode(data);
}
