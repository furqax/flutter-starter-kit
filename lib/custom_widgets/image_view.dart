import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewDialog extends StatelessWidget {
  final String imagePath;

  const ImageViewDialog({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 300,
        width: 300,
        child: PhotoView(
          imageProvider: FileImage(
              File(imagePath)), // Use FileImage with the picked image file path
        ),
      ),
    );
  }
}
