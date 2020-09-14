import 'package:master_learn/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_learn/home.dart';
import 'package:master_learn/classfive.dart';



class ClassFiveEnglish extends StatefulWidget {
  final String title;

  final bagcolor = const Color(0xFF192A56);

  @override
  ClassFiveEnglish(this.title);
  _ClassFiveEnglishState createState() => _ClassFiveEnglishState();
}

class _ClassFiveEnglishState extends State<ClassFiveEnglish> {
  @override
  void initState() {
    super.initState();
  }





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
                  color: bagcolor,
                  height: 50,
                  width: 250,
                  child: Center(child: Text('ENGLISH',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 250,
                  child: Center(child: Text('HINDI',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 250,
                  child: Center(child: Text('MARATHI',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 250,
                  child: Center(child: Text('MATHS',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 250,
                  child: Center(child: Text('SCIENCE',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 250,
                  child: Center(child: Text('HISTORY',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                ),
              ),
            ),
          ),
          GestureDetector(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: bagcolor,
                  height: 50,
                  width: 250,
                  child: Center(child: Text('GEOGRAPHY',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
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
                  MaterialPageRoute( builder: (context) => ClassFiveEnglish('Change Password   ')),
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