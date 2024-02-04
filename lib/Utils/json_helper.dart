import 'dart:convert';
import 'package:flutter/services.dart';

class JsonHelper {
  static Future<Map<String, dynamic>> readJson(String jsonFile) async {
    var response = await rootBundle.loadString(jsonFile);
    final data = await json.decode(response);
    return data;
  }

  static Future writeJson(dynamic value) async {
    var response = const JsonEncoder().convert(value);
    return json.decode(response);
  }

  static dynamic mapObjectToJson(jsonData) {
    var data = json.encode(jsonData);
    return jsonDecode(data);
  }

  void writeJsonString(String key, dynamic value) async {
    // Initialize the local _filePath
    //final _filePath = await _localFile;
    Map<String, dynamic> json = {};
    String jsonString;
    //1. Create _newJson<Map> from input<TextField>
    Map<String, dynamic> newJson = {key: value};
   // print('1.(_writeJson) _newJson: $newJson');

    //2. Update _json by adding _newJson<Map> -> _json<Map>
    json.addAll(newJson);
   // print('2.(_writeJson) _json(updated): $json');

    //3. Convert _json ->_jsonString
    jsonString = jsonEncode(json);
  //  print('3.(_writeJson) _jsonString: $jsonString\n - \n');

    // //4. Write _jsonString to the _filePath
    // _filePath.writeAsString(_jsonString);
  }

/* void readJsonString(String filepath) async {
    // Initialize _filePath
    Map<String, dynamic> _json = {};
    String _jsonString;
    //_filePath = await _localFile;

    // 0. Check whether the _file exists
    _fileExists = await _filePath.exists();
    print('0. File exists? $_fileExists');

    // If the _file exists->read it: update initialized _json by what's in the _file
    if (_fileExists) {
      try {
        //1. Read _jsonString<String> from the _file.
        _jsonString = await _filePath.readAsString();
        print('1.(_readJson) _jsonString: $_jsonString');

        //2. Update initialized _json by converting _jsonString<String>->_json<Map>
        _json = jsonDecode(_jsonString);
        print('2.(_readJson) _json: $_json \n - \n');
      } catch (e) {
        // Print exception errors
        print('Tried reading _file error: $e');
        // If encountering an error, return null
      }
    }
  }*/

// static writeJson(Map map) async {
//   Map<String, Map<String, String>> resultMap = Map();
//   var list = item.variants.values.toList();
//   var models = item.variants.keys.toList();
//   for (int i = 0; list.length > i; i ++) {
//     var variantsName = list.elementAt(i).toList();
//     var modelsName = models.elementAt(i);
//     Map<String, String> values = Map();
//     for (int ind = 0; variantsName.length > ind; ind ++) {
//       String reasultC = controllers[i].elementAt(ind).text;
//       if (reasultC.isNotEmpty && int.parse(reasultC) > 0) {
//         values["${ind + 1}"] = reasultC;
//       }
//     }
//     if (!resultMap.containsKey(modelsName) && values.isNotEmpty) {
//       resultMap[modelsName] = values;
//     }
//   }
// }
}
