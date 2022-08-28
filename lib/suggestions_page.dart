import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:app_flutter/suggestion_component.dart';

import 'package:flutter/material.dart';

class SuggestionsPage extends StatelessWidget {
  const SuggestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      appBar: AppBar(
        title: Text(
          'Предложения',
          style: TextStyle(fontSize: 22),
        ),
        toolbarHeight: 91,
      ),
      body: Column(
        children: [Suggestion(), Suggestion(), Suggestion()],
      ),
    );
  }
}
