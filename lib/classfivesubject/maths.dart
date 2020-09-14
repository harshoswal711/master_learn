import 'package:master_learn/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_learn/classfive.dart';
import 'package:url_launcher/url_launcher.dart';

class ClassFiveMaths extends StatefulWidget {
  final String title;

  final bagcolor = const Color(0xFF192A56);

  @override
  ClassFiveMaths(this.title);
  _ClassFiveMathsState createState() => _ClassFiveMathsState();
}

class _ClassFiveMathsState extends State<ClassFiveMaths> {
  @override
  void initState() {
    super.initState();
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openURL(dynamic a){
    _launchURL(url);
  }

  dynamic url;


  Widget addFreeEvent() {
    return ListView(

        shrinkWrap: true,
        physics: ScrollPhysics(),

        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          GestureDetector(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: Colors.white,
                  height: 50,
                  width: 300,
                  child: Center(child: Text('CHAPTERS',style: TextStyle(color: bagcolor,fontSize: 23,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/FQr64Bt1Aw0';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('1) Numbers',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/K_aR9B4tKFk';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('2) Operations on Numbers : Addition and Subtraction',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/K_aR9B4tKFk';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('3) Operations on Numbers : Multiplication and Division',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/XqF0Z7n1KEM';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('4) Unitary Method',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/Eoy17tTD69w';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('5) Divisibility',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/YtwPcDamSRc';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('6) Profit and Loss',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/mkdsGzESCUY';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('7) Measurement of Time',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/BiCUCqiWOlo';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('8) Equivalent Fractions',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/xNsyNwAkqfk';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('9) Addition and Subtraction of Fractions',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/T3D9z6lUldM';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('10) Multiplication and Division of Fractions',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/rJA9TglTBVE';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('11) Geometry : Basic Concepts',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/wkGVdhpNMQ4';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('12) Angle and Triangle',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/ElI5ljw4Qyc';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('13) Roman Numerals',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/4F-XF-1a82I';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('14) 	Decimal Fractions : Introduction',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/bCRMuRHZO8w';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('15) Decimal Fractions : Addition,Subtraction',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/Tb5AqwCOOJE';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('16) Measurement',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/kLXd3igS5co';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('17) Segment : Measurement and Construction',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/3i2yp-lI_V4';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('18) Properties of Rectangles and Squares',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/q-8eUUIcWTQ';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('19) Circle',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/JAy_CETEyUM';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('20) Perimeter',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/JxkWSDpfOFY';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('21) Area',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              url = 'https://youtu.be/h8EYEJ32oQ8';
              _openURL(url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 280,
                  child: Center(child: Text('22) Statistical Data',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),


        ]);
  }


  createAlertDialogafter(BuildContext context){

    return showDialog(context: context,builder: (context){
      return AlertDialog(
        title: Text("Needs backend and Database connectivity first"),
        actions: <Widget>[
          Center(
            child: MaterialButton(
              elevation: 5,
              textColor: bagcolor,
              child: Text("Return"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute( builder: (context) => ClassFiveMaths('Change Password   ')),
                );
              },
            ),
          ),
        ],
      );
    });
  }




  @override
  void dispose() {
//    _tabController.dispose();
    super.dispose();
  }

  createBody() {
    return addFreeEvent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bagcolor,
        title: Text(widget.title),
        leading: GestureDetector(
          onTap: () {

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ClassFive('Class Five')
                ));
          },
          child: Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
      ),
      body: createBody(),
    );
  }

}