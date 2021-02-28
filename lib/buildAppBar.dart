import 'package:flutter/material.dart';
import 'News.dart';
import 'Contacts.dart';
import 'Ritry.dart';
import 'Schedule.dart';
import 'ONas.dart';
import 'Gallery.dart';

Widget buildAppBar(context) {
  return AppBar(
    backgroundColor: Colors.black,
    toolbarHeight: 100,
    title: Wrap(
      spacing: 0,
      runSpacing: -5,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          'Монкон Дам', // Кунг-фу  Муай-тай  Йога "Лао Муэй"
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.orange),
          textAlign: TextAlign.center,
        ),
        SizedBox(width: 20),
        FlatButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                //Navigator.pop(context);
                Navigator.of(context).popUntil((route) => route.isFirst);
              }
            },
            textColor: Colors.white,
            hoverColor: Colors.orange,
            child: Text('Главная')),
        FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ONas()));
            },
            textColor: Colors.white,
            hoverColor: Colors.orange,
            child: Text('О нас')),
        FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
            },
            textColor: Colors.white,
            hoverColor: Colors.orange,
            child: Text('Новости')),
        FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()));
            },
            textColor: Colors.white,
            hoverColor: Colors.orange,
            child: Text('Галерея')),
        FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Schedule()));
            },
            textColor: Colors.white,
            hoverColor: Colors.orange,
            child: Text('Расписание')),
        FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ritry()));
            },
            textColor: Colors.white,
            hoverColor: Colors.orange,
            child: Text('Ритриты')),
        FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Contacts()));
            },
            textColor: Colors.white,
            hoverColor: Colors.orange,
            child: Text('Контакты')),
      ],
    ),
  );
}
