import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login.dart';

import 'underResources/contactus.dart';


import 'profile.dart';



class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {

  var _name = "MASTER LEARN";
  var _email = 'tejasshinde@gmail.com';
  //var _phone = '0987654321';

  final bagcolor = const Color(0xFF192A56);


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Widget profile = InkWell(
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
               // shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/logoschool1.jpeg'))),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      _name,
                      style: TextStyle(color: bagcolor, fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      _email,
                      style: TextStyle(color: bagcolor, fontSize: 15),
                    ),

                  ),

                  //Padding(
                    //padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    //child: Text(
                      //_phone,
                      //style: TextStyle(color: Colors.white54, fontSize: 12),
                    //),
                  //),
                ],
              ),
            ),
          ),
        ],
      ),

    );


    Widget drawerHeader = Container(
      height: 130,
      child: DrawerHeader(
        child: Column(
          children: <Widget>[profile],
        ),
        decoration: BoxDecoration(
         color: Colors.white,
          // color: Theme.of(context).primaryColor,
        ),
      ),
    );

    return Drawer(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            drawerHeader,

            Divider(
              color: bagcolor,
              thickness: 3,
            ),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: bagcolor,
                  ),
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('Profile',
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: () => {
                //Navigator.of(context).pop(),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage('Profile')),
                )
              },
            ),
            Divider(color: bagcolor,
            thickness: 1,),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: bagcolor,
                  ),
                  child: Icon(
                    Icons.contacts,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('Contact Us',
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: () => {
                //Navigator.of(context).pop(),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs('Contact Us')),
                ),
              },
            ),
            Divider(color: bagcolor,
              thickness: 1,),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: bagcolor,
                  ),
                  child: Icon(
                    Icons.group_work,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('Log Out',
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: () =>
              {
                //Navigator.of(context).pop(),

                // sign out
              Navigator.of(context).pop(),
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage('')),
                ),
              }
            ),
            Divider(color: bagcolor,
              thickness: 1,),


          ],
        ),
      ),
    );
  }
}
