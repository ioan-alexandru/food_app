import 'package:flutter/material.dart';
import 'package:foodapp/screens/registration.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/util/screen_navigation.dart';
import 'package:foodapp/widgets/text_template.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
                child: Image.asset(
              'assets/images/logo.png',
              width: 250,
              height: 250,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: grey),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none,
                          icon: Icon(Icons.email)),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: grey),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          icon: Icon(Icons.lock)),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: red,
                      border: Border.all(color: grey),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextTemplate(text: "Login", textColor: white, textSize: 22,)
                      ],
                    ),),
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                changeScreen(context, RegistrationScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextTemplate(text: "Register here", textSize: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
