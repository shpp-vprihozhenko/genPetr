import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:js' as js;
import 'PhotoView.dart';
import 'buildAppBar.dart';

class Yoga extends StatefulWidget {
  @override
  _YogaState createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
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
                      child: Center(child: Text(' Йога', textScaleFactor: 2),),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/yog2.jpg', width: MediaQuery.of(context).size.width*0.5, height: MediaQuery.of(context).size.height*0.5,),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/yog2.jpg')));
                      },
                    ),
                    Row(
                      children: [
                        Expanded(child:
                        Text("""
  Юддха-йога (йога битвы).
Древнелаосская система Кунг-фу включает в себя очень много разнообразных систем подготовки тела и духа. Это йога повышенной надежности и универсальности, потому что она проверена через боевые практики, а не отвлеченные от реальной жизни теории.
Упражнения, которые входят в комплекс Юддха-йога,дают возможность выработать в теле гибкость и пластику, а также "эластичность" внутренних органов.

Занятия включают:
- йога физического тела - гибкость тела
- йога ума - медитативные практики
- йога энергии - дыхательные упражнения.
"""
                        ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                            color: Colors.orange,
                            onPressed: (){
                              if (kIsWeb) {
                                js.context.callMethod("open", [
                                  "https://hanuman.ru/style/yuddkha-yoga"
                                ]);
                              } else {
                              }
                            },
                            child: Text('Больше о Юддха-йоге')
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
