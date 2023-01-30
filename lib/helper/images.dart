import 'dart:convert';
import 'package:flutter/services.dart';

Future<List<String>> getAssetList(
    {required String format, required String directory}) async {
  // >> To get paths you need these 2 lines
  List<String> imagePaths = [];

  final manifestContent = await rootBundle.loadString('AssetManifest.json');
  // print(manifestContent);
  final Map<String, dynamic> manifestMap = json.decode(manifestContent);
  // >> To get paths you need these 2 lines

  imagePaths = manifestMap.keys
      .where((String key) => key.contains(directory))
      .where((String key) => key.contains(format))
      .toList();

  return imagePaths;
}
