import 'package:flutter/material.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 22),
            child: Row(
              children: [
                Image.asset(
                  'images/person_photo79x79.png',
                  width: 81,
                  height: 81,
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
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('15 отзывов',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(80, 82, 81, 1),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text('355',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        )),
                    Text(
                      'Выполненых\n заказов',
                      textAlign: TextAlign.end,
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 25), child: Icon(Icons.phone)),
              Text('8 775 462 48 71', style: TextStyle(fontSize: 16)),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 25), child: Icon(Icons.mail)),
              Text('igor.levin.1983@mail.ru', style: TextStyle(fontSize: 16)),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 25), child: Icon(Icons.home)),
              Text('Караганда',
                  style: TextStyle(
                      fontSize: 16, decoration: TextDecoration.underline)),
            ],
          ),
        ],
      ),
    );
  }
}
