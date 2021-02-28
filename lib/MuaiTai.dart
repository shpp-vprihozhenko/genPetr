import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'PhotoView.dart';
import 'buildAppBar.dart';

class MuaiTai extends StatefulWidget {
  @override
  _MuaiTaiState createState() => _MuaiTaiState();
}

class _MuaiTaiState extends State<MuaiTai> {
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
                      child: Center(child: Text(' Муай-Тай', textScaleFactor: 2),),
                    ),
                    SizedBox(height: 15,),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/f5.jpg', height: MediaQuery.of(context).size.height*0.5),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f5.jpg')));
                      },
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child:
                        Text('\n«Муай тай» с тайского переводится как «свободный поединок». Удары в муай тай можно наносить ногами (ступнями, голенями, коленями) и руками (кулаками, локтями). Не случайно муай тай(тайский бокс) носит дополнительное название «бой восьми конечностей».'
                            '\n\nК вашим услугам эффективная техника ударов локтями и коленями, работа в клинче и на дистанции. Тренировки по тайскому боксу помогают эффективно овладеть своим телом, сбросить лишний вес и приобрести рельефное тело.'
                            '\n\nДинамично развивающийся во всем мире вид единоборства, позволяющий в довольно короткие сроки овладеть, бесспорно, эффективным комбинациям и приемам.'
                            '\n\nНаправления обучения:'
                            '\n- традиционные и спортивные стили;'
                            '\n- укрепление ударных частей тела;'
                            '\n- физическая и психологическая подготовка;'
                            '\n- участие в турнирах. '
                            ''
//                            '\nОдним из самых жестких и эффективных видов боя является Муай Тай — поединка свободных от страха, ненависти и внутренних комплексов людей.'
//                            '\nМуай тай (или тайский бокс) — бой восьмируких бойцов. Среди всех ударных единоборств, муай тай является наиболее жесткой и эффективной системой ближнего боя.'
//                            '\nШироко используются руки и ноги, а также локти и колени, которые являются наиболее сильной и разрушительной частью арсенала тайского бокса.'
//                            '\n'
//                            '\n - спортивные и старые стили'
//                            '\n - закаливание ударных частей тела'
//                            '\n - физическая и психологическая подготовка'
//                            '\n'
//                            '\nНаправления обучения:'
//                            '\n — традиционный тай-бокс'
//                            '\n — монастырский тай-бокс'
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
                                  "https://uk.wikipedia.org/wiki/%D0%A2%D0%B0%D0%B9%D1%81%D1%8C%D0%BA%D0%B8%D0%B9_%D0%B1%D0%BE%D0%BA%D1%81_(%D0%BC%D1%83%D0%B0%D0%B9_%D1%82%D0%B0%D0%B9)"
                                ]);
                              } else {
                              }
                            },
                            child: Text('Больше про Муай-Тай')
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
