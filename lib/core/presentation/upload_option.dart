import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utility/app_colors.dart';
import '../enums/check_side.dart';
import '../enums/image_option.dart';

class UploadOption extends StatelessWidget {
  final Future<XFile?> Function(ImageSource source, DocumentSide side)? handler;
  final String title;
  final ImageOption imageSource;
  final DocumentSide side;

  const UploadOption({
    Key? key,
    required this.imageSource,
    required this.side,
    required this.width,
    required this.handler,
    required this.title,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: width * 0.6,
      margin: const EdgeInsets.only(bottom: 15, left: 30, right: 30),
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: imageSource == ImageOption.cancel
            ? AppColors.cancelColor
            : AppColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: GestureDetector(
        onTap: () {
          if (imageSource == ImageOption.camera) {
            handler!(ImageSource.camera, side);
          }
          if (imageSource == ImageOption.gallery) {
            handler!(ImageSource.gallery, side);
          }
          Navigator.of(context).pop();
        },
        child: Center(child: Text(title)),
      ),
    );
  }
}
