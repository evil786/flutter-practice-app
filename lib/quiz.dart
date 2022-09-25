import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          color: Color(0xff001D34),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  color: Color(0xffDBA522),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.shopping_cart),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.add_alert_rounded),
                        Spacer(),
                        Icon(Icons.person_outline_sharp),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Welcome Faz',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color(0xffDBA522),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "I'm Shopping For...",
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.search_outlined),
                      suffixIcon: Icon(
                        Icons.settings,
                        color: Color(0xffDBA522),
                        size: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xffDBA522),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffDBA522),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text('Fashion'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 30,
                          width: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text('Fashion',
                              style: TextStyle(color: Color(0xffDBA522))),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 30,
                          width: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Fashion',
                            style: TextStyle(color: Color(0xffDBA522)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                      child: Text(
                    'View All',
                    style: TextStyle(
                        color: Color(0xff898787),
                        decoration: TextDecoration.underline),
                  )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(
                    color: Color(0xffD4AF37),
                    thickness: 3.0,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 333,
                        child: Image.asset(
                            'assets/images/bca.png'),
                      ),
                      Container(
                        height: 160,
                        width: 431,
                        child: Image.asset(
                            'assets/images/bca.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Arrivals',
                                  style: TextStyle(
                                      color: Color(0xffD4AF37),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 200,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                        color: Color(0xffD4AF37),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 170,
                                      width: 160,
                                      child: Image.asset(
                                          'assets/images/product 01.png'),
                                    ),
                                    Container(
                                      height: 59,
                                      width: 110,
                                      margin: EdgeInsets.only(top: 11),
                                      child: Column(
                                        children: [
                                          Text(
                                            'The Marc Jacobs',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            'Traveler Tote',
                                            style: TextStyle(
                                                color: Color(0xffFFE600),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            '\$195.00',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 170,
                                      width: 160,
                                      child: Image.asset(
                                          'assets/images/product 02.png'),
                                    ),
                                    Container(
                                      height: 59,
                                      width: 137.77,
                                      margin: EdgeInsets.only(top: 11),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Axel Arigato',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            'Clean 90 Triple Sneakers',
                                            style: TextStyle(
                                                color: Color(0xffFFE600),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            '\$245.00',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 170,
                                      width: 160,
                                      child: Image.asset(
                                          'assets/images/product 12.png'),
                                    ),
                                    Container(
                                      height: 59,
                                      width: 170,
                                      margin: EdgeInsets.only(top: 11),
                                      child: Column(
                                        children: [
                                          Text(
                                            'On Ear Headphone',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            'Beats Solo3 Wireless Kulak',
                                            style: TextStyle(
                                                color: Color(0xffFFE600),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            '\$105.00',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 170,
                                      width: 160,
                                      child: Image.asset(
                                          'assets/images/product 11.png'),
                                    ),
                                    Container(
                                      height: 59,
                                      width: 137.77,
                                      margin: EdgeInsets.only(top: 11),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Apple Watch',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            'Headphones 700Beats',
                                            style: TextStyle(
                                                color: Color(0xffFFE600),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            '\$475.00',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
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
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Center(
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                      color: Color(0xff898787),
                                      decoration: TextDecoration.underline),
                                )),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Divider(
                              color: Color(0xffD4AF37),
                              thickness: 3.0,
                            ),
                          ),
                          SizedBox(height:37),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Popular',
                                  style: TextStyle(
                                      color: Color(0xffD4AF37),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 200,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                        color: Color(0xffD4AF37),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600),
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
          ),
        ),
      ),
    );
  }
}
