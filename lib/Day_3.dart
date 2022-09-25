import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'awsmbar.dart';
class DayThree extends StatelessWidget {
  const DayThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0xffF5F5F5),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Row for icon
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/Group 627205.png'),
                    SizedBox(
                      width: 28,
                    ),
                    const Text(
                      'My Parking',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'SemiBold',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 80, right: 34, top: 75),
                      padding:
                          const EdgeInsets.only(left: 60, top: 11, right: 40),
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.search_sharp,
                        color: Color(0xffCACACA),
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
              //Row for Balance

              Padding(
                padding: const EdgeInsets.only(left: 10, top:30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 37,
                      width: 111,
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          border: Border.all(
                            width: 2,
                            color: Color(0xffBC0063),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Text(
                          'Ongoing',
                          style: TextStyle(
                            color: Color(0xffBC0063),
                            fontFamily: 'SemiBold',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 37,
                      width: 111,
                      decoration: BoxDecoration(
                          color: const Color(0xffBC0063),
                          border: Border.all(
                            width: 2,
                            color: Color(0xffBC0063),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Text(
                          'Completed',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SemiBold',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 37,
                      width: 111,
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          border: Border.all(
                            width: 2,
                            color: Color(0xffBC0063),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Text(
                          'Canceled',
                          style: TextStyle(
                            color: Color(0xffBC0063),
                            fontFamily: 'SemiBold',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 14),
                    padding: EdgeInsets.only(left: 15, top: 28, bottom: 22),
                    height: 225,
                    width: 358,
                    decoration: BoxDecoration(
                      color: Colors.tealAccent.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/Rectangle 63.png'),
                            Column(
                              children: [
                                Text(
                                  'Allington Paddock',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'SemiBold',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7518 Washington Alley',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xffA1A1A1),
                                    fontFamily: 'SemiBold',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 16, left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$6.58',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xffBC0063),
                                          fontFamily: 'SemiBold',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '/ 2 hours',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xffA1A1A1),
                                          fontFamily: 'SemiBold',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Container(
                                        height: 28.67,
                                        width: 87,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffF5F5F5),
                                            border: Border.all(
                                              width: 2,
                                              color: Color(0xff01DB3E),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Center(
                                          child: Text(
                                            'Completed',
                                            style: TextStyle(
                                              color: Color(0xff01DB3E),
                                              fontFamily: 'SemiBold',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:20,),
                        Container(
                          width: 306,

                            child: Divider(
                          thickness: 1,
                          color: Colors.red,
                        )),
                        Container(

                          height: 37,
                          width: 285,
                          decoration: BoxDecoration(
                              color: const Color(0xffF5F5F5),
                              border: Border.all(
                                width: 2,
                                color: Color(0xffBC0063),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Center(
                            child: Text(
                              'View Ticket',
                              style: TextStyle(
                                color: Color(0xffBC0063),
                                fontFamily: 'SemiBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(top: 14),
                    padding: EdgeInsets.only(left: 15, top: 28, bottom: 22),
                    height: 225,
                    width: 358,
                    decoration: BoxDecoration(
                      color: Colors.tealAccent.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/Rectangle 77 (1).png'),
                            Column(
                              children: [
                                Text(
                                  'Appleton Warren',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'SemiBold',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '8499 Red Could Coust',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xffA1A1A1),
                                    fontFamily: 'SemiBold',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(top: 16, left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$8.98',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xffBC0063),
                                          fontFamily: 'SemiBold',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '/ 2 hours',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xffA1A1A1),
                                          fontFamily: 'SemiBold',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Container(
                                        height: 28.67,
                                        width: 87,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffF5F5F5),
                                            border: Border.all(
                                              width: 2,
                                              color: Color(0xff01DB3E),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Center(
                                          child: Text(
                                            'Completed',
                                            style: TextStyle(
                                              color: Color(0xff01DB3E),
                                              fontFamily: 'SemiBold',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:20,),
                        Container(
                            width: 306,

                            child: Divider(
                              thickness: 1,
                              color: Colors.red,
                            )),
                        Container(

                          height: 37,
                          width: 285,
                          decoration: BoxDecoration(
                              color: const Color(0xffF5F5F5),
                              border: Border.all(
                                width: 2,
                                color: Color(0xffBC0063),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(50))),
                          child: Center(
                            child: Text(
                              'View Ticket',
                              style: TextStyle(
                                color: Color(0xffBC0063),
                                fontFamily: 'SemiBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 14),
                padding: EdgeInsets.only(left: 15, top: 28, bottom: 22),
                height: 150,
                width: 358,
                decoration: BoxDecoration(
                  color: Colors.tealAccent.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Rectangle 77 (1).png'),
                        Column(
                          children: [
                            Text(
                              'Appleton Warren',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: 'SemiBold',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8499 Red Could Coust',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffA1A1A1),
                                fontFamily: 'SemiBold',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 16, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    '\$8.98',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffBC0063),
                                      fontFamily: 'SemiBold',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '/ 2 hours',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffA1A1A1),
                                      fontFamily: 'SemiBold',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Container(
                                    height: 28.67,
                                    width: 87,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF5F5F5),
                                        border: Border.all(
                                          width: 2,
                                          color: Color(0xff01DB3E),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        'Completed',
                                        style: TextStyle(
                                          color: Color(0xff01DB3E),
                                          fontFamily: 'SemiBold',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 14),
                padding: EdgeInsets.only(left: 15, top: 28, bottom: 22),
                height: 150,
                width: 358,
                decoration: BoxDecoration(
                  color: Colors.tealAccent.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Rectangle 77 (1).png'),
                        Column(
                          children: [
                            Text(
                              'Appleton Warren',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: 'SemiBold',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8499 Red Could Coust',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffA1A1A1),
                                fontFamily: 'SemiBold',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 16, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    '\$8.98',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffBC0063),
                                      fontFamily: 'SemiBold',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '/ 2 hours',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffA1A1A1),
                                      fontFamily: 'SemiBold',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Container(
                                    height: 28.67,
                                    width: 87,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF5F5F5),
                                        border: Border.all(
                                          width: 2,
                                          color: Color(0xff01DB3E),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        'Completed',
                                        style: TextStyle(
                                          color: Color(0xff01DB3E),
                                          fontFamily: 'SemiBold',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MyHomePage(),
                          ],
                        ),
                      ],
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
