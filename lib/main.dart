import 'package:flutter/material.dart';
import 'package:food/network/api.dart';
import 'package:food/network/api1/food_api_response.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  late FoodApi foodApiObject ;
  late FoodApiResponse responseObject ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<FoodApiResponse>(future: foodApiObject.getApiData(), builder: (context , snapshot){

        if(snapshot.hasData){
          print(snapshot.data!.toMap().toString()) ;
          responseObject = snapshot.data! ;
        }
        if(snapshot.hasError){
          print(snapshot.error.toString()) ;
        }

        return Center(
          child: Container(
            child:  const CircularProgressIndicator(),
          ),
        );
      },),
    );
  }
}
