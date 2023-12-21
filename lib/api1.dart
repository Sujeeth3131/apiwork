import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:api/api2.dart';
import 'package:flutter/material.dart';

class api1 extends StatefulWidget {
  const api1({super.key});

  @override
  State<api1> createState() => _api1State();
}

class _api1State extends State<api1> {


  Future<Bored> details() async {
    var resp = await http.get(
        Uri.parse("https://www.boredapi.com/api/activity"));

      return Bored.fromJson(jsonDecode(resp.body));



  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Bored>(
            future:details(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(snapshot.data!.activity.toString()),
                    Text(snapshot.data!.participants.toString()),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );







}}

