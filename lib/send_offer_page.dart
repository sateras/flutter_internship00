import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void DoImages() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      appBar: AppBar(),
      body: Container(
        height: 586,
        margin: EdgeInsets.only(left: 21, right: 21, top: 87),
        padding: EdgeInsets.only(left: 20, right: 20, top: 18),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(7),
            border:
                Border.all(color: Color.fromRGBO(196, 196, 196, 1), width: 2)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                      color: Color.fromRGBO(196, 196, 196, 1), width: 2)),
              height: 200,
              margin: EdgeInsets.only(bottom: 18),
              padding: EdgeInsets.only(left: 11, right: 11),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                children: [
                  Image.asset(
                    'images/rectangle104x88.png',
                    height: 88,
                    width: 104,
                  ),
                  Image.asset(
                    'images/rectangle104x88.png',
                    height: 88,
                    width: 104,
                  ),
                  Image.asset(
                    'images/rectangle104x88.png',
                    height: 88,
                    width: 104,
                  ),
                  Image.asset(
                    'images/rectangle104x88.png',
                    height: 88,
                    width: 104,
                  ),
                  Image.asset(
                    'images/rectangle104x88.png',
                    height: 88,
                    width: 104,
                  ),
                  Image.asset(
                    'images/rectangle104x88.png',
                    height: 88,
                    width: 104,
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                      color: Color.fromRGBO(196, 196, 196, 1), width: 2)),
              padding: EdgeInsets.only(left: 12, right: 12),
              margin: EdgeInsets.only(bottom: 24),
              height: 252,
              child: TextFormField(
                minLines: 3,
                maxLines: 12,
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  hintText: 'Введите текст',
                  border: InputBorder.none,
                ),
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
      ),
    );
  }
}
