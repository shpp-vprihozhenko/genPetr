import 'package:flutter/material.dart';
import 'PhotoView.dart';
import 'buildAppBar.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
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
                      child: Center(child: Text(' Новости', textScaleFactor: 2),),
                    ),
                    SizedBox(height: 20,),
                    Text("""
  Свершилось!!!
  Экскурсия удалась!
  Мы побывали в Буддийском Храме "Белый Лотос".
  Уникальное место, место Силы!
  Кроме экскурсии, наши участники побывали и на мастер классах - "Боевой шест " и "Чайная церемония ".
  
  Благодарим наставников Школы кунг-фу "Ша - Фут - Фань" Николая Ивановича и Оксану Дмитриевну за подаренный  опыт.
                    """,
                    textScaleFactor: 1.1,),
                    SizedBox(height: 20,),
                    Wrap(
                      children: [
                        _buildImgWithZoom(context, 'n1'),
                        _buildImgWithZoom(context, 'n2'),
                        _buildImgWithZoom(context, 'n3'),
                        _buildImgWithZoom(context, 'n4'),
                        _buildImgWithZoom(context, 'n5'),
                      ],
                    ),
                    SizedBox(height: 80,),
                  ],),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector _buildImgWithZoom(BuildContext context, String fileName) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('images/$fileName.jpg', width: 200,),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView('images/$fileName.jpg')));
      },
    );
  }
}
