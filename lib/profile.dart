import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  @override
  ProfilePage(this.title);
  _ProfilePageState createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  String name = "Test";
  String mobileNumber = "7037251245";
  String mail = "testmail@gmail.com";
  String designation = "Student";

  Widget setBarCode() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black,
          height: 200,
          width: 200,
        ),
      ),
    );
  }



  Widget setName() {
    return Flexible(
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                fontSize: 25,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }

  Widget setMobileNumber() {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.call,
          size: 30,
          color: Colors.grey[600],
        ),
      ),
      title: Text(
        "Mobile",
        style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        mobileNumber,
        style: TextStyle(
            fontSize: 20,
            color: Colors.blue[900],
            fontWeight: FontWeight.bold
        ),
      ),

    );
  }

  Widget setEmail() {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.mail,
          size: 30,
          color: Colors.grey[600],
        ),
      ),
      title: Text(
        "Email",
        style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        mail,
        style: TextStyle(
            fontSize: 20,
            color: Colors.blue[900],
            fontWeight: FontWeight.bold
        ),
      ),

    );
  }

  Widget setDesignation() {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.person,
          size: 30,
          color: Colors.grey[600],
        ),
      ),
      title: Text(
        "Designation",
        style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        designation,
        style: TextStyle(
            fontSize: 20,
            color: Colors.blue[900],
            fontWeight: FontWeight.bold
        ),
      ),

    );
  }

  Widget createBody() {
    return Column(
      children: <Widget>[
       SizedBox(height: 30,),

        //Spacer(),
        SizedBox(height: 10,),
        setName(),
        SizedBox(
          height: 20,
        ),
        setMobileNumber(),
        SizedBox(
          height: 10,
        ),
        setEmail(),
        SizedBox(
          height: 5,
        ),
        setDesignation(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bagcolor,
        title: Text(
            widget.title
        ),
        leading: GestureDetector(
          onTap: () {

            Navigator.push(
                context,
                MaterialPageRoute( builder: (context) => MyHomePage())
            );
          },
          child: Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // sign out
              Navigator.of(context).pop();
              Navigator.push( context, MaterialPageRoute(builder: (context) => LoginPage('')),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.power_settings_new,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: createBody(),
    );
  }
}