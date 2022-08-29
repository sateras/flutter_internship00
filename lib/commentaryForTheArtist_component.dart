import 'package:flutter/material.dart';

class CommentaryForArtist extends StatefulWidget {
  const CommentaryForArtist({Key? key}) : super(key: key);

  @override
  State<CommentaryForArtist> createState() => _CommentaryForArtistState();
}

class _CommentaryForArtistState extends State<CommentaryForArtist> {
  var isOpen = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList.radio(
      children: [
        ExpansionPanelRadio(
            value: 1,
            headerBuilder: (context, isOpen) => Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 19),
                      child: Icon(Icons.comment),
                    ),
                    Expanded(
                      child: Text(
                        'Комментарий для исполнителя',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
            body: Container(
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
            canTapOnHeader: true)
      ],
    );
  }
}
