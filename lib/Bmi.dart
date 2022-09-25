import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

login(){
  http.post(Uri.parse("http://http://adeegmarket.zamindarestate.com/api/v1/login"),
  headers: {

    'Content Type':'application/json',

  },

    body: jsonEncode({
        'email':'',
         'password':'',



      }),




  );


}
  @override
  State<Bmi> createState() => _BmiState();

}
final TextEditingController _heightController = TextEditingController();
final TextEditingController _weightController = TextEditingController();
FocusNode _focusNode = new FocusNode();
var bmi=0.0;
String title='No Result';
String descrpiction='No Result';

class _BmiState extends State<Bmi> {
  void Calculate(){
    var convertmeter= double.parse(_heightController.text)*0.3048;
    var hightSqaure=convertmeter*convertmeter;
    print(hightSqaure);
    setState(() {
      bmi=double.parse(_weightController.text)/double.parse(hightSqaure.toString());
      String res=bmi.toStringAsFixed(2);
      bmi=double.parse(res);
      print(res);
      if(bmi<18){
        title='Unfit';
        descrpiction='This Body is Under Weight';
      }else if(bmi>18 && bmi<24){
        title='Normal';
        descrpiction='The Body is Normal';
      }else if(bmi>24){
        title='WeightOver';
        descrpiction='You are  OverWeighted';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 85,
                width: 417,
                decoration: BoxDecoration(
                  color: Color(0xff1A1F38),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    'BMI calculator',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 54),
                height: 240,
                width: 354,
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HIEGHT',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 20,
                          fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      height: 46,
                      width: 297.83,
                      child: TextFormField(

                        controller:_heightController,
                        autofocus: false,
                        style: new TextStyle(
                            fontSize: 25.0, color: Color(0xFFC3C5C9)),
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 5.0, top: 5.0, right: 14.7),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: Color(0xff01A560), width: 2),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Text(
                      'WEIGHT',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      height: 46,
                      width: 297.83,
                      child: TextFormField(
                        maxLines: 5,
                        minLines: 1,
                        controller: _weightController,
                        autofocus: false,
                        style: new TextStyle(
                            fontSize: 25.0, color: Color(0xFFC3C5C9)),
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 5.0, top: 5.0, right: 14.7),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: Color(0xff01A560), width: 2),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 9),
                height: 65,
                width: 354 ,
                decoration: BoxDecoration(
                  color: Color(0xffF10606),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: GestureDetector(onTap: (){
                  Calculate();
                  _focusNode.unfocus();

                },
                  child: Center(
                    child: Text(
                      'CALCULATE',

                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 33,),
              Container(
                margin: EdgeInsets.only(top: 9),
                height: 280,
                width: 383,
                decoration: BoxDecoration(
                  color: Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:16,top: 22),
                          child: Text(
                            'Your Result:',

                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 40,),
                    Text(
                      title,

                      style: TextStyle(
                        color: Color(0xff09FF7A),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      bmi.toString(),

                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 80,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      descrpiction,

                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
