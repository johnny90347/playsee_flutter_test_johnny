import 'package:flutter/material.dart';

// 照片格子
class ImageCell extends StatelessWidget {
  final String id;

  const ImageCell({required this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network("http://storage.googleapis.com/pst-framy/stk/${id}.jpg", fit: BoxFit.cover);
  }
}
