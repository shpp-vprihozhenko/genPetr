import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'PhotoView.dart';
import 'buildAppBar.dart';

class KungFu extends StatefulWidget {
  @override
  _KungFuState createState() => _KungFuState();
}

class _KungFuState extends State<KungFu> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: buildAppBar(context),
        body: Center(
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.white, fontSize: 16),
            child: Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width<500? MediaQuery.of(context).size.width: MediaQuery.of(context).size.width*0.7,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(children: [
                  Container(
                    color: Colors.orange,
                    height: 50, width: double.infinity,
                    child: Center(child: Text(' Кунг-фу', textScaleFactor: 2, style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('images/kungfuIeroglif.jpg', width: MediaQuery.of(context).size.width*0.3, height: MediaQuery.of(context).size.height*0.5),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/kungfuIeroglif.jpg')));
                    },
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    //child: Text('\nКунг фу – это учение свободных и совершенных.'),
                    child: Row(
                      children: [
                        //Image.asset('images/kungfuIeroglif.jpg', height: 300,),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('\nУчение кунг-фу - Учение жизни.'
                                '\nВ своем боевом аспекте Кунг-фу - "самая совершенная борьба"(бой),потому что основана на законах Природы.'
                                '\nКунг-фу дает человеку реальную возможность выйти из мрака невежества и бездуховности, выжить и победить в "каменных джунглях" нашего времени - время хаоса и тьмы.'
                                '\n\nНаправления обучения:'
                                '\n\n1.Стилевая техника'
                                '\n  - Черный кот "Мэо Дам"'
                                '\n  - Кобра "Нгу"'
                                '\n  - Дракон "Монкон Дам"'
                                '\n\n2.Работа с оружием (нунчаку, шест)'),
                          ),
                        ),
                      ],
                    ),
                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text('Кунг фу – это не спорт, это образ жизни, это философия, это медицина, это путь к просветлению и силе.'),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text('Методики нашей школы уникальны и разнообразны и позволяют воспитать сильных телом и духом людей.'),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text('\nНаправления обучения:\n1. стилевая техника\n - черный кот\n - кобра\n - дракон\n2. работа с оружием (нунчаку, шест)\n3. работа со стихиями'),
//                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                          color: Colors.orange,
                          onPressed: (){
                            if (kIsWeb) {
                              js.context.callMethod("open", [
                                "https://uk.wikipedia.org/wiki/%D2%90%D1%83%D0%BD%D1%84%D1%83"
                              ]);
                            }
                          },
                          child: Text('Больше об искусстве кунг-фу')
                      ),
                      SizedBox(width: 30,),
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
