import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PopulationData extends StatefulWidget {
  const PopulationData({Key? key}) : super(key: key);

  @override
  State<PopulationData> createState() => _PopulationDataState();
}

class _PopulationDataState extends State<PopulationData> {
  var responseBody;
  bool loading = true;
  List countries = [];

  @override
  initState() {
    super.initState();
    getPopulationData();
  }

  getPopulationData() async {
    setState(() {
      loading = true;
    });
    print('api calling...............');
    var api =
        "https://datausa.io/api/data?drilldowns=Nation&measures=Population";
    var response = await http.get(
      Uri.parse(api),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      setState(() {
        responseBody = jsonDecode(response.body);
        debugPrint('$responseBody');
        countries = responseBody['data'].toList();
        log('countries: $countries');
      });

      debugPrint('Data:  $responseBody');
    } else {
      print("Server error please try again later");
    }
    setState(() {
      loading = false;
    });
    print('Api ok....');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Population API'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            loading == true
                ? Text('Loading')
                : Container(
              child: Column(
                children: [
                  //Text(responseBody['data'].toString()),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ListView.builder(
                        itemCount: countries.length,
                        itemBuilder: (context, index){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(countries[index]['Nation']),
                              Text(countries[index]['Year']),
                              Text(countries[index]['Population'].toString()),
                            ],);
                        }
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