import 'dart:io';

import 'package:advanced_core/Core/widgets/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

String getOs() {
  return Platform.operatingSystem;
}

Future<void> urlLauncher(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackBar(context, '${'AppString.notLaunch'} $url');
    }
  }
}
