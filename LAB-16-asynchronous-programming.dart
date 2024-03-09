import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  final url = 'https://pdfdrive.com.co/wp-content/pdfh/the-immortal-life-of-henrietta-lacks-PDFdrive.com.co-.pdf';
  final savePath = 'file.pdf';

  try {
    await downloadFile(url, savePath);
    print('File downloaded successfully!');
  } catch (e) {
    print('Error downloading file: $e');
  }
}

Future<void> downloadFile(String url, String savePath) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
  } else {
    throw Exception('Failed to download file: ${response.statusCode}');
  }
}