import 'package:assii/custom_bottom.dart';
import 'package:flutter/material.dart';
import 'package:validation_textformfield/validation_textformfield.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class DayTwo extends StatelessWidget {
  const DayTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff72C6EF),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                          height: 156,
                          width: 410,
                          child: Image.asset(
                            'assets/images/image 8.png',
                            fit: BoxFit.fill,
                          )),
                    ),
                    Positioned(
                        top: 92,
                        left: 145,
                        child: CircleAvatar(
                          radius: 65,
                          backgroundColor: Color(0xff72C6EF),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/images/image 7.png'),
                          ),
                        )),
                    Positioned(
                        top: 170,
                        left: 360,
                        child: Icon(
                          Icons.settings_outlined, size: 30 ,
                          color: Colors.white,
                        )),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 367,
                        width: 434,
                        child: Image.asset(
                          'assets/images/image 6.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 242,
                        ),
                        height: 500,
                        width: 355,
                        child: Column(
                          children: [
                            Text(
                              'John Doe, 27',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 28,
                                  fontFamily: 'Open Sans'),
                            ),
                            Text(
                              'San Francisco, USA',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 16,
                                  fontFamily: 'Open Sans'),
                            ),
                            Text(
                              'john Doe@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 10,
                                  fontFamily: 'Open Sans'),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Institute',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 16,
                                    fontFamily: 'Open Sans'),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              child: TextFormField(
                                maxLines: 5,
                                minLines: 1,
                                controller: null,
                                autofocus: false,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    fontSize: 16.0, color: Color(0xFFC3C5C9)),
                                decoration: new InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'School Optional',
                                  suffix: Icon(
                                    Icons.edit_outlined,
                                    color: Color(0xff677A8F),
                                    size: 30,
                                  ),
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0,
                                      bottom: 5.0,
                                      top: 5.0,
                                      right: 14.7),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.white),
                                    borderRadius:
                                        new BorderRadius.circular(25.7),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.white),
                                    borderRadius:
                                        new BorderRadius.circular(25.7),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Gender',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 16,
                                    fontFamily: 'Open Sans'),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            TextFormField(
                              maxLines: 5,
                              minLines: 1,
                              controller: null,
                              autofocus: false,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 16.0, color: Color(0xFFC3C5C9)),
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Select',
                                suffix: Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff677A8F),
                                  size: 30,
                                ),
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0,
                                    bottom: 5.0,
                                    top: 5.0,
                                    right: 14.7),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                  borderRadius: new BorderRadius.circular(25.7),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                  borderRadius: new BorderRadius.circular(25.7),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Grade',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 16,
                                    fontFamily: 'Open Sans'),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            TextFormField(
                              maxLines: 5,
                              minLines: 1,
                              controller: null,
                              autofocus: false,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 16.0, color: Color(0xFFbdc6cf)),
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Select',
                                suffix: Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff677A8F),
                                  size: 30,
                                ),
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0,
                                    bottom: 5.0,
                                    top: 5.0,
                                    right: 14.7),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                  borderRadius: new BorderRadius.circular(25.7),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                  borderRadius: new BorderRadius.circular(25.7),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Contact Number',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 16,
                                    fontFamily: 'Open Sans'),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            TextFormField(
                              maxLines: 5,
                              minLines: 1,
                              controller: null,
                              autofocus: false,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 16.0, color: Color(0xFFbdc6cf)),
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type here',
                                suffix: Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff677A8F),
                                  size: 30,
                                ),
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0,
                                    bottom: 5.0,
                                    top: 5.0,
                                    right: 14.7),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                  borderRadius: new BorderRadius.circular(25.7),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                  borderRadius: new BorderRadius.circular(25.7),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 39,
                            ),
                            Container(
                              height: 38,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Color(0xff00B0D7),
                                borderRadius: BorderRadius.circular(31),
                              ),
                              child: Center(
                                child: Text(
                                  'Save',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 16,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 40),
                  height: 42.02,
                  width: 371,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(31),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Setting',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
