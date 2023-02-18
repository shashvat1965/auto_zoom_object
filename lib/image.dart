import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key, required this.image}) : super(key: key);
  final XFile image;
  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Image.file(File(widget.image.path));
  }
}
