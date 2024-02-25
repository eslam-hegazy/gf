import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlLink({required String urlLink}) async {
  var url = Uri.parse(urlLink);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
