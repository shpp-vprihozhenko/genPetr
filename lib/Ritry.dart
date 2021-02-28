import 'package:flutter/material.dart';

import 'buildAppBar.dart';

class Ritry extends StatefulWidget {
  @override
  _RitryState createState() => _RitryState();
}

class _RitryState extends State<Ritry> {
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
                      child: Center(child: Text(' Ритриты', textScaleFactor: 2),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/ritr.jpg', height: 250,),
                        ),
                        Expanded(
                          child: Text('РИТРИТЫ — это духовные практики в единственном в Европе Буддийском Храме воинских искусств «Белый Лотос».'
                              '\nБлагодаря нашим практикам Вы обретете:'
                              '\n — гармонизиацию судьбы;'
                              '\n — очищение кармы;'
                              '\n — энергетическую чистку;'
                              '\n — улучшение учебы;'
                              '\n — успех в личной жизни;'
                              '\n — стабилизация и процветание бизнеса;'
                              '\n — повышение и продвижение по карьерной лестнице.'
                              '\n\n— Мы дадим Вам тепло и поддержку;'
                              '\n— Вы сможете лично пообщаться и посетить семинары Ведущих Мастеров Школы;'
                              '\n— Вы сможете побеседовать с духовным Наставником;'
                              '\n— Разовьете новые способности;'
                              '\n— Отдохнете душой в теплой атмосфере;'
                              '\n— Узнаете множество боевых и эзотерических техник на все случаи жизни;'
                              '\n— Познакомитесь с интересными людьми.'
                              '\n\nНасыщенные, для души и для тела практики (Ритриты) Школа «Ша-Фут-Фань» проводит более 10-ти лет, чтобы дать Вам силу, вдохновение, ресурсы, а некоторым и смысл Жизни. Древние энергетические практики, уникальные боевые практики, культура монастырских восточных Школ.'
                              '\n\n26 Уникальных практик-Ритритов: мастер-классы, мудры, семинары, занятия в воде, медитации, мантры, экскурсии, восточные танцы, работа с чакрами, лечение суставов, fly-йога лечение ЖКТ, лечение спины, оружие Древних Школ, Древняя ночная практика ЗИКРа, йога, кунг-фу, тай-бокс, написание иероглифов, чайная церемония…'
                              ''),
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
