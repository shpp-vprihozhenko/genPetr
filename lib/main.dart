import 'package:flutter/material.dart';
import 'buildAppBar.dart';
import 'Yoga.dart';
import 'MuaiTai.dart';
import 'KungFu.dart';
import 'Samooborona.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Вин-чунь, муай-тай',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Сайт боевых искуств и йоги г. Черноморск'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int mode = 0, subMode=0, curImgNum=0;
  List <String> imCarLst = ['hram.jpg', 'f2.jpg', 'f9.jpg', 'f1.jpg', 'f3.jpg', 'kungfu_jumper.jpg', 'muaitai2.jpg', 'kungfu2.jpg', 'f4.jpg', 'f8.jpg']; //, 'slide-muay-thai.jpg', 'f4.jpg', 'slider-yoga-1.jpg'
  String textHeader = 'Программы занятий';

  @override
  void initState() {
    swapImgLoop();
    super.initState();
  }

  swapImgLoop(){
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        curImgNum++;
        if (curImgNum==imCarLst.length) {
          curImgNum=0;
        }
      });
      swapImgLoop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Scaffold(
          appBar: buildAppBar(context),
          body: Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                Image.asset('images/${imCarLst[curImgNum]}', height: 200,),
                SizedBox(height: 20,),
                Text(textHeader, textScaleFactor: 1.8,
                  style: TextStyle(color: Colors.orange),
                  textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                _buildProgTren(),
              ],
            ),
          ),
        ));
  }

  Widget _buildProgTren(){
    return Container(
      width: MediaQuery.of(context).size.width>500? MediaQuery.of(context).size.width*0.8 : double.infinity,
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.orange),
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new KungFu()),);
                      },
                      hoverColor: Colors.white,
                      padding: EdgeInsets.all(12),
                      child: Stack(
                        children: [
                          Image.asset('images/c1v3.jpg', height: 180, width: 258,),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 50, width: 258,
                              color: Colors.black38.withOpacity(0.7),
                              child: Center(child: Text('КУНГ ФУ', textScaleFactor: 1.4, style: TextStyle(color: Colors.grey[400]))),
                            )
                          )
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new MuaiTai()),);
                      },
                      hoverColor: Colors.white,
                      padding: EdgeInsets.all(12),
                      child: Image.asset('images/c2.jpg')
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new Yoga()),);
                      },
                      hoverColor: Colors.white,
                      padding: EdgeInsets.all(12),
                      child: Stack(
                        children: [
                          Image.asset('images/yog1.jpg', height: 180, width: 258,),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                height: 50, width: 258,
                                color: Colors.black38.withOpacity(0.7),
                                child: Center(child: Text('ЮДДХА ЙОГА', textScaleFactor: 1.4, style: TextStyle(color: Colors.grey[400]))),
                              )
                          )
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                      hoverColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new Samooborona()),);
                      },
                      padding: EdgeInsets.all(12),
                      child: Image.asset('images/c4.jpg')
                  ),
                ),
              ],),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width>500? MediaQuery.of(context).size.width*0.8 : double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('  Клуб боевых искусств "Монкон Дам" предлагает обучение по таким направлениям боевых искусств, как Кунг-фу, Муай Тай (или тайский бокс), Юддха йога, Кунг-Фу для детей, Лаосская Гимнастика, Йога для похудения, Тай-Бокс для девушек, Cамооборона, Работа с оружием: нунчаку, шест.'
                      '\n  Мы поможем Вам открыть в себе скрытые возможности, обрести силу, уверенность в себе. Не отказывайте себе в удовольствии овладеть боевыми искусствами.',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Новости', textScaleFactor: 1.8,),
                  ),
//                  Row(
//                    children: [
//                      Image.asset('images/8885.jpg', width: 80, fit: BoxFit.contain),
//                      SizedBox(width: 20,),
//                      Expanded(
//                          child:
//                            Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: [
//                                Text('Как мы провели осенние игры!', textScaleFactor: 1.4,),
//                                Text('Веселые эстафеты, перетягивание каната, боевые игры, полоса препятствий, показательные номера, сладкий стол. — Вот так встретились ученики федерации «Лао-Тай» Николаева и Клуба боевых искусств "Монкон Дам" г. Черноморска 10 ноября. В век технологий — живое общение — это приятные воспоминания детства. Посмотрите на эти счастливые лица!))'),
//                              ],
//                            )),
//                    ],
//                  ),
//                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Image.asset('images/8884.jpg', width: 80, fit: BoxFit.contain),
                      SizedBox(width: 20,),
                      Expanded(
                        child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Медитации', textScaleFactor: 1.4,),
                              Text('Современному человеку медитация просто необходима! Все больше и больше людей задумываются о смысле жизни, о том, как прожить эту жизнь счастливо. Мы приглашаем Вас на духовную работу над собой! Медитация поможет решить Вам Ваши внутренние проблемы: тревожность, излишнее беспокойство…'),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMainRow() {
    if (MediaQuery.of(context).size.width > 720) {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView(children: listWofNews()),
          ),
          Expanded(
            flex: 2,
            child: ListView(
                padding: const EdgeInsets.all(8.0), children: listWofWelcome()),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: listWofChampions(),
            ),
          ),
        ],
      );
    }

    List<Widget> lSpace = [];
    lSpace.add(SizedBox(height: 20));

    List<Widget> commonWList =
        listWofNews() + listWofWelcome() + lSpace + listWofChampions();
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: commonWList,
    );
  }

  List<Widget> listWofChampions() {
    return [
      Text(
        'Наши таланты',
        textScaleFactor: 2,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 20,
      ),
      Image.network('http://ra-aida.ru/media/upload/1425384093.png'),
      SizedBox(height: 15),
      Image.network(
          'http://zhitomir.today/app_default/media/news/_cache/kunfuditi_765_285_4_w.jpg'),
      SizedBox(height: 15),
      Image.network(
          'https://images.pexels.com/photos/3761725/pexels-photo-3761725.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
      SizedBox(height: 15),
      Image.network(
          'https://images.pexels.com/photos/2204179/pexels-photo-2204179.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
    ];
  }

  List<Widget> listWofNews() {
    return [
      Text(
        'Наши новости',
        textScaleFactor: 2,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 20,
      ),
      Image.network(
          'https://n1.nextpng.com/sticker-png/396/180/sticker-png-chinese-ip-man-ip-man-2-wing-chun-history-of-wing-chun-chinese-martial-arts-martial-arts-film-siu-nim-tao-thumbnail.png'),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
            'После летних каникул возобновил работу зал по адресу г. Черноморск, ул. Александрийская, 22.'),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Тренер по йоге вышел в нирвану. Скоро обещал вернуться.'),
      ),
      SizedBox(
        height: 10,
      ),
    ];
  }

  List<Widget> listWofWelcome() {
    return [
      Text(
        'Мы приглашаем',
        textScaleFactor: 2,
        textAlign: TextAlign.center,
      ),
      Image.network(
          'https://www.thesun.co.uk/wp-content/uploads/2016/10/nintchdbpict0001515644162.jpg?w=620'),
      Text(
        'Работают группы по направлению вин-чунь для детей от 7 лет',
        textScaleFactor: 1.2,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Для подростков и юношей от 13 лет мы предлагаем занятия в секциях муай-тай и тайского бокса',
        textScaleFactor: 1.2,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Для взрослых мы предлагаем малокомплектные группы по йоге',
        textScaleFactor: 1.2,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'А по пятницам у нас - традиционные медитации',
        textScaleFactor: 1.3,
        textAlign: TextAlign.center,
      ),
    ];
  }

  showContacts() {
    print(112);
    setState(() {
      mode = 1;
    });
  }

  Widget buildContacts() {
    return Container(
        height: double.infinity,
        color: Colors.indigo,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text(
                'Тренер по муай-тай и тайскому боксу',
                textScaleFactor: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Красножон Геннадий Петрович',
                textScaleFactor: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              Image.asset(
                'images/m5.jpg',
                width: 250,
                height: 250,
              ),
              SizedBox(height: 10),
              Text('Телефон: 096-4528908',
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.yellowAccent)),
              SizedBox(height: 20),
              FloatingActionButton(
                  backgroundColor: Colors.lightGreen,
                  child: Text('OK'),
                  onPressed: () {
                    setState(() {
                      mode = 0;
                    });
                  }),
            ],
          ),
        ));
  }

  Widget buildScheduler() {
    return Container(
        height: double.infinity,
        color: Colors.indigo,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text(
                'Занятия по муай-тай проходят в понедельник, среду и пятницу, в 19-00',
                textScaleFactor: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.deepPurpleAccent,
                child: Text(
                  'Занятия по тайскому боксу проходят во вторник, четверг и субботу, в 19-00',
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              Text('Вин-чунь: 16-00 в понедельник, среду и пятницу',
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Container(
                color: Colors.deepPurpleAccent,
                child: Text('Йога: в 12-00 в субботу ',
                    textScaleFactor: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              FloatingActionButton(
                  backgroundColor: Colors.lightGreen,
                  child: Text('Ясно'),
                  onPressed: () {
                    setState(() {
                      mode = 0;
                    });
                  }),
            ],
          ),
        ));
  }
}

