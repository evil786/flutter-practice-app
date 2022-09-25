import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class University extends StatefulWidget {
  const University({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}
@override


class _UniversityState extends State<University> {

  bool loading = true;
  List universities = [];
  @override
  initState() {
    super.initState();
    universitydata();
  }
  void universitydata() async{
    setState(() {
      loading = true;
    });
    var api =
        "http://universities.hipolabs.com/search?country=Pakistan";
    var response = await http.get(
      Uri.parse(api),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    print(response.statusCode);

    if (response.statusCode == 200) {
      setState(() {
        var responseBody = jsonDecode(response.body);
        debugPrint('$responseBody');
        universities = responseBody.toList();
        log('universities: $universities');
      });

      var responseBody;
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
        title: Text('Search University'),
      ),
      backgroundColor: Colors.cyan,

      body: loading == true
          ? Text('Loading')
          : ListView.builder(
          shrinkWrap: true,
          itemCount: universities.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(

                title: Text(universities[index]['name']),
                subtitle: Text(universities[index]['country']),
                trailing: Icon(Icons.abc_rounded),
                isThreeLine: true,
              ),
            );

          }
      ),
    );
  }
}