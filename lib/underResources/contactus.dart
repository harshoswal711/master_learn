import 'package:master_learn/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_learn/home.dart';
import 'package:master_learn/sidebar.dart';

class ContactUs extends StatefulWidget {
  final String title;
  final bagcolor = const Color(0xFF192A56);

  @override
  ContactUs(this.title);
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bagcolor,
        title: Text(widget.title),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
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

  Widget allCourtOrders() {
    return Center(
      child: Text(
        'Contact Number: 55555555555',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue[900],
        ),
      ),
    );
  }

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  createBody() {
    return allCourtOrders();
  }
}
