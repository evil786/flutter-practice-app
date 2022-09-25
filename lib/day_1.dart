import 'package:flutter/material.dart';

import 'custom_bottom.dart';

class DayOne extends StatelessWidget {
  const DayOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
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
                    const Text(
                      'Renter Dashboard',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'SemiBold',
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 80, right: 34, top: 75),
                      padding: const EdgeInsets.only(left: 15, top: 11),
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Color(0xffEFECEC),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications_none_outlined,
                        color: Color(0xffBC0063),
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
              //Row for Balance
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 8),
                child: Row(
                  children: const [
                    Text(
                      'Balance:',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'SemiBold',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '\$30.55',
                      style: TextStyle(
                        color: Color(0xffBC0063),
                        fontFamily: 'SemiBold',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 54),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      height: 100,
                      width: 96,
                      decoration: BoxDecoration(
                        color: const Color(0xffBC0063).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            '05',
                            style: TextStyle(
                              color: Color(0xffBC0063),
                              fontFamily: 'SemiBold',
                              fontSize: 25.6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Total ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'SemiBold',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Parking',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'SemiBold',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      height: 100,
                      width: 96,
                      decoration: BoxDecoration(
                        color: const Color(0x01DB3E).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            '05',
                            style: TextStyle(
                              color: Color(0xffBC0063),
                              fontFamily: 'SemiBold',
                              fontSize: 25.6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Total ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'SemiBold',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Booked',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'SemiBold',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      height: 100,
                      width: 96,
                      decoration: BoxDecoration(
                        color: const Color(0xff848484).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            '05',
                            style: TextStyle(
                              color: Color(0xffBC0063),
                              fontFamily: 'SemiBold',
                              fontSize: 25.6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Free',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'SemiBold',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Parking',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'SemiBold',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Booked',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'SemiBold',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 17, bottom: 22),
                    height: 137,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
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
                              padding: const EdgeInsets.only(top: 16, left: 20),
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
                                    width: 35,
                                  ),
                                  Text(
                                    ' Booked',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff01DB3E),
                                      fontFamily: 'SemiBold',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 17, bottom: 22),
                    height: 137,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
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
                              padding: const EdgeInsets.only(top: 16, left: 20),
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
                                    width: 35,
                                  ),
                                  Text(
                                    ' Booked',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff01DB3E),
                                      fontFamily: 'SemiBold',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Booked',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'SemiBold',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 17, bottom: 22),
                    height: 137,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
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
                              padding: const EdgeInsets.only(top: 16, left: 20),
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
                                    width: 35,
                                  ),
                                  Text(
                                    ' Booked',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff01DB3E),
                                      fontFamily: 'SemiBold',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 17, bottom: 22),
                    height: 137,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
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
                              padding: const EdgeInsets.only(top: 16, left: 20),
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
                                    width: 35,
                                  ),
                                  Text(
                                    ' Booked',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff01DB3E),
                                      fontFamily: 'SemiBold',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Add Parking'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),


    );
  }
}
