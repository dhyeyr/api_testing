// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:api_testing/api_helper.dart';
import 'package:api_testing/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class FatchData1 extends StatefulWidget {
  const FatchData1({super.key});

  @override
  State<FatchData1> createState() => _FatchData1State();
}

class _FatchData1State extends State<FatchData1> {
  List<ApiTest> apiList = [];


  @override
  void initState() {
    api_helper().GetApi().then((value) {
      try {
        apiList = apiTestFromJson(value);
        setState(() {});
      } catch (e, s) {
        print(e);
        print(s);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Api of Get"),
      ),
      body: ListView.builder(
        itemCount: apiList.length,
        itemBuilder: (context, index) {
          var sample = apiList[index];
          return Container(
            color: Colors.pink[100],
            height: 330,
            padding: EdgeInsetsDirectional.all(8),
            margin: EdgeInsetsDirectional.all(8),
            child: Column(
              children: [
                Text("User ID : ${sample.userId}", style: TextStyle(fontSize: 18)),
                Text("Id : ${sample.id}", style: TextStyle(fontSize: 18)),
                Text("Title : ${sample.title}", style: TextStyle(fontSize: 18)),
                Text("Body : ${sample.body}", style: TextStyle(fontSize: 18)),
              ],
            ),
          );
        },
      ),

    );
  }
  // Future<void> fatchData() async {
  //   var future = await http.get(
  //       Uri.parse("https://jsonplaceholder.typicode.c om/posts"));
  //   apiList = sampleFromJson(future.body);
  //   setState(() {});
  // }
}