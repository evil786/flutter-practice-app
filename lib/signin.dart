import 'dart:convert';


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
 late String setup;

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
        "https://official-joke-api.appspot.com/random_joke";
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
        String setup = responseBody['setup'];
        print(setup);
      });


      setState(() {
        loading = false;
      });
      print('Api ok....');
    }
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
                    Text(responseBody['setup']),
                    Text(responseBody['punchline']),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }