import 'package:flutter/material.dart';
import 'PhotoView.dart';
import 'buildAppBar.dart';

class ONas extends StatefulWidget {
  @override
  _ONasState createState() => _ONasState();
}

class _ONasState extends State<ONas> {
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
                      child: Center(child: Text(' О нас', textScaleFactor: 2),),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/f2.jpg', width: MediaQuery.of(context).size.width*0.5, height: MediaQuery.of(context).size.height*0.5,),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/f2.jpg')));
                      },
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(textData()),
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

  String textData() {
    return '\nКлуб боевых искусств "Монкон Дам" более 20 лет в Черноморске. Является филиалом Школы кунг-фу "Ша Фут фань". Центр Школы находится в г.Черкассы, Буддийский Храм "Белый Лотос".'
        '\nМы поможем Вам открыть в себе скрытые возможности, обрести силу, уверенность в себе. Не отказывайте себе в удовольствии овладеть боевыми искусствами.'
                            '\n\nНаш клуб - это место, где Вы можете:'
                            '\n — обучиться лао-тайским боевым искусствам;'
                            '\n — укрепить свое здоровье;'
                            '\n — улучшить свои моральные и физические качества;'
                            '\n — преобрести навыки необходимые для самообороны.'
//                            '\n — улучшить здоровье;'
//                            '\n — воплощать свои творческие идеи;'
//                            '\n — приобрести красивую фигуру;'
//                            '\n — найти новых друзей, общаться, делиться друг с другом опытом!'
                            '\n\n Клуб боевых искусств "Монкон Дам" проводит постоянный набор в детские, взрослые мужские и женские, общие группы, малокомплектные группы (от 4 до 10 человек) и индивидуальные занятие без возрастного ограничения.'
                            '\nМетодики школы уникальны и разнообразны и позволяют воспитать сильных телом и духом людей.'
                            '\n\nНАПРАВЛЕНИЯ ОБУЧЕНИЯ:'
                            '\n — Муай тай (традиционный, монастырский)'
                            '\n — Кунг-фу (стилевая техника: Черный Кот, Кобра, Дракон)'
                            '\n — Йога (юддха-йога, аэродинамическая)'
                            '\n — Оружие (нунчаку, шест)'
                            '\n — Тайский бокс и кунг-фу для детей'
                            '\n\nКлуб боевых искусств "Монкон Дам" может изменить Ваш стиль жизни, сделать ее интереснее, ярче и увереннее!!!'
                            '\nКлуб боевых искусств "Монкон Дам" ждет Вас! Чтобы получить детальную информацию или записаться на тренировку, свяжитесь с нами.';
  }
  
  
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 100);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(100, 0);
    path.lineTo(100, 100);
    path.lineTo(0, 100);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
