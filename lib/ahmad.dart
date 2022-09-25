import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  State<Cal> createState() => _CalState();
}
final TextEditingController _heightController = TextEditingController();
final TextEditingController _weightController = TextEditingController();
FocusNode _focusNode = new FocusNode();
var bmi=0.0;
String title='No Result';
String descrpiction='No Result';

class _CalState extends State<Cal> {
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
  //GlobalKey sdk=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: sdk,
      backgroundColor: const Color(0xff1A1F38),
      appBar: AppBar(
        title: const Center(
            child: Text(
              'BMI calculator',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 26),
            )),
        backgroundColor: Color(0xff1A1F38),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.04,
                left: MediaQuery.of(context).size.width * 0.075,
                right: MediaQuery.of(context).size.width * 0.075,
              ),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        1.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                  color: const Color(0xff1A1F38),
                  //(0xff1A1F38),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.045,
                        top: MediaQuery.of(context).size.height * 0.015,
                      ),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'HEIGHT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.035,
                          top: MediaQuery.of(context).size.height * 0.015,
                          right: MediaQuery.of(context).size.width * 0.035),
                      child: TextFormField(
                        controller: _heightController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color(0xff01A560),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.045,
                        top: MediaQuery.of(context).size.height * 0.015,
                      ),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'WEIGHT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.035,
                          top: MediaQuery.of(context).size.height * 0.015,
                          right: MediaQuery.of(context).size.width * 0.035),
                      child: TextFormField(
                        controller: _weightController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color(0xff01A560),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.022,
            ),
            GestureDetector(
              onTap: (){
                Calculate();
                _focusNode.unfocus();
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: const Color(0xffF10606),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.022,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.32,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      1.0, // Move to right 5  horizontally
                      1.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
                color: Color(0xff1A1F38),
                //(0xff1A1F38),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 12),
                    child: Text(
                      'Your Result:',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Color(0xff08FF7A),
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        bmi.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 32),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        descrpiction,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}