import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info/package_info.dart';

/// 現在のアプリバージョン取得Provider
final packageInfoProvider = FutureProvider<String>((ref) async {
  // 現在のアプリバージョンを取得するためにPackageInfoを利用
  final appPackageInfo = await PackageInfo.fromPlatform();

  return appPackageInfo.version;
});