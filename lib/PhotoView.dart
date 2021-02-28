import 'package:flutter/material.dart';

class PhotoView extends StatefulWidget {
  final imgName;
  PhotoView(this.imgName);

  @override
  _PhotoViewState createState() => _PhotoViewState(imgName);
}

class _PhotoViewState extends State<PhotoView> {
  final imgName;
  _PhotoViewState(this.imgName);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          child: Image.asset(imgName),
          onTap: (){
            Navigator.pop(context);
          },
        )
    );
  }
}
