import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
// import 'dart:io';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  var child;

  var children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryWhite,
        bottomNavigationBar: BottomAppBar(
          color: primaryBar,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Note: Please mention the following details in your e-mail - Registered Email ID, Name, Roll No., Branch and Year of Admission.',
                style: TextStyle(color: primaryWhite, fontSize: 10)),
          ),
          elevation: 0,
        ),
        appBar: AppBar(
          title: Text('STELA'),
          backgroundColor: primaryBar,
          leading: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: primaryWhite,
              )),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Column(children: <Widget>[
                      Icon(
                        Icons.contact_support_outlined,
                        color: primaryButton,
                        size: 100,
                      ),
                      Text('CONTACT US',
                          style: TextStyle(
                              color: primaryButton,
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryWhite,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: primaryWhite),
                        ),
                        child: Text('Facing Issues in the App ?',
                            style: TextStyle(
                                color: primaryBar,
                                fontSize: 15,
                                fontFamily: 'PTSerif',
                                fontWeight: FontWeight.bold)),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(2),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: primaryButton),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            'Mail us at : stela5.0igdtuw@gmail.com',
                            style: TextStyle(color: primaryBar, fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ]))),
          ),
        ));
  }
}
