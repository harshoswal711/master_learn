import 'package:master_learn/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';


class ClassSeven extends StatefulWidget {
  final String title;

  final bagcolor = const Color(0xFF192A56);

  @override
  ClassSeven(this.title);
  _ClassSevenState createState() => _ClassSevenState();
}

class _ClassSevenState extends State<ClassSeven> {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 1,
              obscureText: true,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: 'Enter current paswword',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) => setState(() {}),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              maxLines: 1,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: 'Enter new password',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) => setState(() {}),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 1,
              obscureText: true,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: 'Confirm new password',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) => setState(() {}),
            ),
          ),
          SizedBox(
            height: 30,
          ),



          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                child: FlatButton(
                  color: bagcolor,
                  textColor: Colors.white,
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      createAlertDialogafter(context);
                    });
                  },
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
                  MaterialPageRoute( builder: (context) => ClassSeven('Change Password   ')),
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
                        MyHomePage()
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