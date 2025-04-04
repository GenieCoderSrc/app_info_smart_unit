import 'package:package_info_plus/package_info_plus.dart';

class AppInfoTxtConst {
  static String version = '1.0.0';


  static String copyrightAllRightReserved =
      'Copyright Ⓒ $appName $currentYear -All Right Reserved';

  static String get currentYear => DateTime.now().year.toString();

  static const String developer = 'GenieCoder';
  static const String developerEmail = 'genie.coder@gmail.com';

  static Future<String> get appName async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.appName.toUpperCase();
  }

  static Future<String> get appVersion async {
    final packageInfo = await PackageInfo.fromPlatform();
    return '${packageInfo.version} (${packageInfo.buildNumber})';
  }
}
