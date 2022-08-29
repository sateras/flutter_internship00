import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_flutter/commentaryForTheArtist_component.dart';

class RequestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.plus_one),
              label: "Заявка",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: "История",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Меню",
            )
          ],
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'Заявка',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(254, 241, 241, 241),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 22.0, top: 26, left: 22.0),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 35),
                child: Row(
                  children: [
                    Image.asset(
                      'images/person_photo.png',
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 7.0),
                              child: Text(
                                'TOO',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Text(
                              'СтройМарт',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      '4.07.2022',
                      style: TextStyle(
                          color: Color.fromRGBO(136, 168, 229, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 19),
                        child: SvgPicture.asset('images/map_mark_icon.svg')),
                    Expanded(
                      child: Text(
                        'Город',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text(
                      'Караганда',
                      style: TextStyle(
                          color: Color.fromRGBO(136, 168, 229, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(color: Color.fromRGBO(196, 196, 196, 1)),
              Container(
                height: 58,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 19),
                      child: SvgPicture.asset(
                        'images/fluent_building_icon.svg',
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Адрес',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text(
                      'Бухар Жирау 23',
                      style: TextStyle(
                          color: Color.fromRGBO(136, 168, 229, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(color: Color.fromRGBO(196, 196, 196, 1)),
              Container(
                height: 58,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 19),
                      child: SvgPicture.asset(
                        'images/calendar_icon.svg',
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        'Дата начала работ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const Text(
                      '12.07.2022',
                      style: TextStyle(
                          color: Color.fromRGBO(136, 168, 229, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(color: Color.fromRGBO(196, 196, 196, 1)),
              Container(
                height: 58,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 18),
                      child: SvgPicture.asset('images/speedcontrol_icon.svg'),
                    ),
                    Expanded(
                      child: Text(
                        'Срочность',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text(
                      'Высокая',
                      style: TextStyle(
                          color: Color.fromRGBO(136, 168, 229, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(color: Color.fromRGBO(196, 196, 196, 1)),
              CommentaryForArtist(),
              Container(
                margin: EdgeInsets.only(bottom: 41),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                        color: Color.fromRGBO(196, 196, 196, 1), width: 2)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/person_photo79x79.png',
                            width: 79,
                            height: 79,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Арман',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Text(
                                        '4.5',
                                        style: TextStyle(fontSize: 14),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('15 отзывов',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromRGBO(
                                                  80, 82, 81, 1))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text('355',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'Выполненых\n заказов',
                                textAlign: TextAlign.end,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 25),
                              child: Icon(Icons.phone)),
                          Text('8 775 462 48 71',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 25),
                              child: Icon(Icons.mail)),
                          Text('igor.levin.1983@mail.ru',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 25),
                            child: Icon(Icons.home)),
                        Text('Караганда',
                            style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline)),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      height: 56,
                      onPressed: () {},
                      child: Text(
                        'Отправить отсчет',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      color: Color.fromRGBO(74, 160, 7, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
