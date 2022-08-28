import 'package:app_flutter/send_offer_page.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter/request_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  Widget _myContacts = MyContacts();
  Widget _myEmails = MyEmails();
  Widget _myProfile = MyProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar Example"),
      ),
      body: this.getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
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
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return this._myContacts;
    } else if (this.selectedIndex == 1) {
      return this._myEmails;
    } else {
      return this._myProfile;
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}

class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Contacts"));
  }
}

class MyEmails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RequestList()));
          },
          child: Text('Заявка', style: TextStyle(fontSize: 15)),
          color: Color.fromARGB(255, 139, 137, 255),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text('Заявка2', style: TextStyle(fontSize: 15)),
          color: Color.fromARGB(255, 139, 137, 255),
        ),
      ],
    ));
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile"));
  }
}
