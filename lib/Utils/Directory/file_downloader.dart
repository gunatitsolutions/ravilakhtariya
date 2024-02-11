import 'dart:html' as html;
import 'package:http/http.dart' as http;

class FileDownloader  {
  @override
  Future<void> uploadFile() async {
    // TODO
  }

  @override
 static Future<void> downloadFile() async {
    final url = Uri.parse('assets/ravilakhtariya.pdf');
    final response = await http.get(url);
    final blob = html.Blob([response.bodyBytes]);
    final anchorElement = html.AnchorElement(
      href: html.Url.createObjectUrlFromBlob(blob).toString(),
    )..setAttribute('download', 'raviLakhtariya.pdf');
    html.document.body!.children.add(anchorElement);
    anchorElement.click();
    html.document.body!.children.remove(anchorElement);
    print(response.bodyBytes.length);
  }
}