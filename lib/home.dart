import 'package:flutter/material.dart';
import 'profile.dart';

import 'sidebar.dart';
import 'classeight.dart';
import 'classfive.dart';
import 'classnine.dart';
import 'classone.dart';
import 'classseven.dart';
import 'classsix.dart';
import 'classten.dart';
import 'classthree.dart';
import 'classtwo.dart';
import 'classfour.dart';

class MyHomePage extends StatefulWidget {
  //final String title;
  dynamic autoken;
  int schoolId;
  MyHomePage({this.autoken, this.schoolId});

  @override
  //MyHomePage();
  _MyHomePageState createState() =>
      _MyHomePageState(autoken: autoken, schoolId: schoolId);
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  dynamic autoken;
  int schoolId;
  _MyHomePageState({this.autoken, this.schoolId});

  dynamic kPrimaryColor = Colors.blue[900];
  dynamic kTextColor = Colors.black45;
  dynamic kBackgroundColor = Color(0xFFF9F8FD);
  final bagcolor = const Color(0xFF192A56);

  double kDefaultPadding = 20.0;

  Widget Home() {
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "images/logoschool1.png",
                  ),
                ),
              ),
              //child: imag,

              //  width: 10height: 200,0,
              //color: Colors.pink,
              // child: ,
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
            indent: 15,
            endIndent: 15,
            color: bagcolor,
          ),
          GridView.count(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              childAspectRatio: (MediaQuery.of(context).size.width) /
                  (MediaQuery.of(context).size.height / 1.8),
              crossAxisCount: 2,

              //   mainAxisSpacing: 3,

              crossAxisSpacing: 5,
              children: <Widget>[
                Flexible(
                  child: Card(

                    color: bagcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 10.0,
                    child: Stack(

                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            //Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ClassOne('Class One   ')),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 1.0),
                                  child: Icon(
                                    Icons.looks_one,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Divider(
                                color: Colors.white,
                                thickness: 2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                //color: Colors.orange[300],
                                child: Center(
                                  child: Text(
                                    'Class One',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18,
                                      //backgroundColor: Colors.orange[200],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    color: bagcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 10.0,
                    child: Stack(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            //Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClassTwo('Class Two')),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 1.0),
                                  child: Icon(
                                    Icons.looks_two,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Divider(
                                color: Colors.white,
                                thickness: 2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                //color: Colors.orange[300],
                                child: Center(
                                  child: Text(
                                    'Class Two',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18,
                                      //backgroundColor: Colors.orange[200],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    color: bagcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 10.0,
                    child: Stack(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            //Navigator.of(context).pop();

                            //Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ClassThree('Class Three')),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 1.0),
                                  child: Icon(
                                    Icons.looks_3,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Divider(
                                color: Colors.white,
                                thickness: 2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                //color: Colors.orange[300],
                                child: Center(
                                  child: Text(
                                    'Class Three',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18,
                                      //backgroundColor: Colors.orange[200],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    color: bagcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 10.0,
                    child: Stack(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            //Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ClassFour('Class FOur   ')),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 1.0),
                                  child: Icon(
                                    Icons.looks_4,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Divider(
                                color: Colors.white,
                                thickness: 2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                //color: Colors.orange[300],
                                child: Center(
                                  child: Text(
                                    'Class Four',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18,
                                      //backgroundColor: Colors.orange[200],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    color: bagcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 10.0,
                    child: Stack(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            //Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ClassFive('Class Five')),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 1.0),
                                  child: Icon(
                                    Icons.looks_5,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Divider(
                                color: Colors.white,
                                thickness: 2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                //color: Colors.orange[300],
                                child: Center(
                                  child: Text(
                                    'Class Five',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18,
                                      //backgroundColor: Colors.orange[200],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    color: bagcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 10.0,
                    child: Stack(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            //Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ClassSix('Class Six   ')),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 1.0),
                                  child: Icon(
                                    Icons.looks_6,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Divider(
                                color: Colors.white,
                                thickness: 2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                //color: Colors.orange[300],
                                child: Center(
                                  child: Text(
                                    'Class Six',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18,
                                      //backgroundColor: Colors.orange[200],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'More Coming Up Soon...',
              style: TextStyle(fontSize: 20, color: Colors.blue[800]),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
            color: bagcolor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              // expandedHeight: ,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              pinned: true,
              titleSpacing: 0,

              elevation: 10,
              backgroundColor: bagcolor,
              //backgroundColor: innerBoxIsScrolled ? db3_white : db3_white,
              actionsIconTheme: IconThemeData(opacity: 0.0),
              title: Container(
                height: 60,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
//                          IconButton(
//                            icon: Icon(Icons.menu, color: db3_textColorPrimary,),
//                            onPressed: () {
//                              finish(context);
//                            },
//                          ),
                          Text('Master Learn'),
                          //  text(db3_lbl_home, textColor: db3_textColorPrimary, fontSize: textSizeNormal, fontFamily: fontBold),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                //height: expandHeight,
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: PageView(
                        children: <Widget>[
                          Container(
                              // img: db3_ic_sofa,
                              // heading: "Make yourself \nat home",
                              //subheading: "We love clean design and natural \nfurniture solutions",
                              ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ];
        },
        body: Home(),
      ),
    );
  }
}
