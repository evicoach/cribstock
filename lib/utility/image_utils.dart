import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class ImageUtils {
  final picker = ImagePicker();

  Future<File?> selectCameraImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      return compressAndGetFile(File(pickedFile.path));
    } else {
      debugPrint('No image selected.');
      return null;
    }
  }

  Future<File?> selectGalleryImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      return compressAndGetFile(File(pickedFile.path));
    } else {
      debugPrint('No image selected.');
      return null;
    }
  }

  Future<File?> compressAndGetFile(File file) async {
    String filename = basename(file.path);
    Directory dir = await path_provider.getTemporaryDirectory();
    final targetPath =
        "${dir.absolute.path}/yep_${DateTime.now().toIso8601String()}_$filename";

    var compressedFile = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path, targetPath,
        minWidth: 400, quality: 88);
    debugPrint("FILE SIZE: BEFORE${file.lengthSync()}");
    debugPrint(compressedFile?.lengthSync().toString());
    return compressedFile;
  }
}
