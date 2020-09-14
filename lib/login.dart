import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'animations.dart';


class LoginPage extends StatefulWidget {
  final String title;




  @override
  LoginPage(this.title);

  _LoginPageState createState() => _LoginPageState();
}

String logoUrl1 = "images/logoschool1.png";


Color blackColor = Colors.black;
Color whiteColor = Colors.white;
final bagcolor = const Color(0xFF192A56);

class _LoginPageState extends State<LoginPage> {


  final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
        body: createBody());
  }



  Widget createBody() {
    return Container(
      color: bagcolor,
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                FadeAnimation(
                    1.2,
                    "LX",
                    Container(
                      height: 330,
                      decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(00),
                            bottomRight: Radius.elliptical(400, 250)),
                      ),
                    )),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(000),
                        bottomRight: Radius.elliptical(400, 250)),
                  ),
                ),
                Positioned(
                    left: 30,
                    bottom: 60,
                    child: FadeAnimation(
                        2,
                        "LX",
                        Container(
                          width: 150,
                          height: 150,
                          child: Image.asset(logoUrl1),
                        ))),
                Positioned(
                  left: 20,
                  top: 70,
                  right: 20,
                  child: FadeAnimation(
                    1,
                    "LX",
                    Container(
                      child: Text(
                        "MASTER LEARN",
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 30,
                            color: bagcolor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Spacer(flex: 1,),

            SizedBox(
              height: 30,
            ),
            FadeAnimation(
              1.3,
              "LY",

              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Center(

                  child: TextFormField(

                    cursorWidth: 2,
                    obscureText: false,
                    maxLengthEnforced: false,
                    cursorColor: blackColor,


                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusColor: Colors.white,

                      helperMaxLines: 0,
                      //border: InputBorder.none,
                      hintText: "  Username",
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                      filled:true,
                    ),
                    onChanged: (text) {
                      email = text;
                    },
                    validator: (val) {
                      if(val.length == 0){

                        return ('Password cannot be empty');
                      }
                      return null;
                    },
//                    validator: (val) => val.length == 0 ? "Username
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),


            FadeAnimation(
              1.5,
              "RY",
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Center(
                  child: TextFormField(
                      cursorWidth: 2,
                      obscureText: true,
                      maxLengthEnforced: false,
                      cursorColor: blackColor,
                      decoration: InputDecoration(
                        helperMaxLines: 0,
                        fillColor: Colors.white,
                        hoverColor: Colors.white,
                        focusColor: Colors.white,
                        //border: InputBorder.none,
                        hintText: "  Password",
                        hintStyle: TextStyle(
                          fontSize: 20,
                        ),
                        filled:true,

                      ),

                      onChanged: (text ) {
                        password = text;
                      },
                      validator: (val) {
                        if(val.length == 0){

                          return ('Password cannot be empty');
                        }
                        return null;
                      }
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            FadeAnimation(
              1.7,
              'RX',
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, ),
                child: FlatButton(
                  // onTap: (){
                  // Navigator.push(
                  //   context,
                  // MaterialPageRoute( builder: (context) => MyHomePage('School Score   ')),
                  //);







                      onPressed: () {
                        Fluttertoast.showToast(msg: 'Please wait..',backgroundColor: Colors.black);
                           Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );







                  },

                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: blackColor,
                      borderRadius: BorderRadius.circular(400),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    height: 60,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                //   Navigator.of(context);
                // Navigator.push(
                // context,
                //MaterialPageRoute( builder: (context) => MyHomePage('School Score')),
                //);
              },
              child: Text('Forgot Password ? Click here',
                style: TextStyle(
                    color: Colors.white
                ),),
            ),

            //  ),
          ],
        ),
      ),
    );
  }



  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool _isLoading = false;
  dynamic email;
  String message;
  dynamic password;
  dynamic autoken;
  int schoolId;

  dynamic display;




  createAlertDialogs(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Invalid user ID or Password"),
            actions: <Widget>[
              Center(
                child: MaterialButton(
                  elevation: 5,
                  textColor: bagcolor,
                  child: Text("try again"),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginPage('   ')),
                    );
                  },
                ),
              ),
            ],
          );
        });
  }
  createAlertDialogsuser(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("User cannot be empty"),
            actions: <Widget>[
              Center(
                child: MaterialButton(
                  elevation: 5,
                  textColor: bagcolor,
                  child: Text("try again"),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginPage('')),
                    );
                  },
                ),
              ),
            ],
          );
        });
  }
  createAlertDialogspass(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Password cannot be empty"),
            actions: <Widget>[
              Center(
                child: MaterialButton(
                  elevation: 5,
                  textColor: bagcolor,
                  child: Text("try again"),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginPage('')),
                    );
                  },
                ),
              ),
            ],
          );
        });
  }


}