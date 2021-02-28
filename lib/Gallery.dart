import 'package:flutter/material.dart';
import 'PhotoView.dart';
import 'buildAppBar.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: buildAppBar(context),
        body: Wrap(
          children: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f1.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f1.jpg')));
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f2.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f2.jpg')));
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f3.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f3.jpg')));
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f4.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f4.jpg')));
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f5.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f5.jpg')));
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f6.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f6.jpg')));
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f7.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f7.jpg')));
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f8.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f8.jpg')));
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/f9.jpg', width: 200,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f9.jpg')));
              },
            ),
          ],
        ),
      ),
    );
  }
}
