import 'package:flutter/material.dart';

import 'buildAppBar.dart';

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
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
                      child: Center(child: Text(' Расписание', textScaleFactor: 2),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(child:
                        Text('\nРасписание занятий зала на ул. Александрийская, 22'),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      border: TableBorder.all(color: Colors.orange),
                      children: [
                        TableRow(
                            children: [
                              Center(child: Text('Время')),Center(child: Text('Понедельник')),Center(child: Text('Вторник')),Center(child: Text('Среда')),Center(child: Text('Четверг')),Center(child: Text('Пятница')),Center(child: Text('Суббота'))
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('08:00')),
                              Container(padding: EdgeInsets.all(8),child: Text('Юддха йога', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Юддха йога', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('-', textAlign: TextAlign.center,)),
                              Center(child: Text('-'))
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('9:00')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (8-10лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (8-10лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (8-10лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-'))
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('15:30')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (8-10лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (8-10лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (8-10лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('17:00')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (10-16лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (10-16лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (10-16лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('19:00')),
                              Container(padding: EdgeInsets.all(8),child: Text('Юддха йога', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Юддха йога', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Медитации', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('20:00')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу 18+', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу 18+', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Кунг-фу (работа с оружием- нунчаки)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                            ]
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(child:
                        Text('\nРасписание занятий зала на ул. Спортивная, 3'),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      border: TableBorder.all(color: Colors.orange),
                      children: [
                        TableRow(
                            children: [
                              Center(child: Text('Время')),Center(child: Text('Понедельник')),Center(child: Text('Вторник')),Center(child: Text('Среда')),Center(child: Text('Четверг')),Center(child: Text('Пятница')),Center(child: Text('Суббота'))
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('16:00')),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('-', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('-', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Муай тай - спарринги', textAlign: TextAlign.center,)),
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('18:30')),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Муай тай (10-16лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Муай тай (10-16лет)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('-', textAlign: TextAlign.center,)),
                            ]
                        ),
                        TableRow(
                            children: [
                              Center(child: Text('20:00')),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Муай тай (18+)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('Муай тай (18+)', textAlign: TextAlign.center,)),
                              Center(child: Text('-')),
                              Container(padding: EdgeInsets.all(8),child: Text('-', textAlign: TextAlign.center,)),
                            ]
                        ),
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
}
