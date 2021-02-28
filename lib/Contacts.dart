import 'dart:js' as js;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'buildAppBar.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: buildAppBar(context),
        body: Center(
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.5),
            child: Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width<500? MediaQuery.of(context).size.width: MediaQuery.of(context).size.width*0.7,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    Container(
                      color: Colors.orange,
                      height: 50, width: double.infinity,
                      child: Center(child: Text(' Контакты', textScaleFactor: 2),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(color:  Colors.white),
                              children: [
                                TextSpan(text: 'Чтобы получить детальную информацию или записаться на тренировку, свяжитесь с нами:'
                                    '\n+38 (096) 452 89 08 или (063) 485 15 28'
                                    '\nE-mail: krasnogon123@gmail.com'
                                    '\nНайдите нас на  '),
                                TextSpan(
                                    text: 'Facebook',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        if (kIsWeb) {
                                          js.context.callMethod("open", [
                                            "https://www.facebook.com/groups/363302077441097"
                                          ]);
                                        };
                                    },
                                    style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
                                TextSpan(text: ' или '),
                                TextSpan(
                                    text: 'Instagram',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        if (kIsWeb) {
                                          js.context.callMethod("open", [
                                            "https://www.instagram.com/monkon_dam/?hl=en"
                                          ]);
                                        };
                                      },
                                    style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)
                                ),
                                TextSpan(text: ' или  (@monkon_dam), чтобы следить за нашими новостями и предложениями.'
                                    '\n\nНаш адрес:'
                                    '\nул. Александрийская, 22'
                                    '\nг. Черноморск, Украина'
                                ),
                              ],//
                            ),
                          ),
                        )
                      ],),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                            color: Colors.orange,
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text('Вернуться на главную')
                        )
                      ],
                    )
                  ],),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
