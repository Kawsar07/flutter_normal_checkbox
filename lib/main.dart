import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main (){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text('Youtube'),

        centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
Text(isChecked ==false ? 'Unchecked' : 'Cheked',style: TextStyle(
  fontSize: 45,
), ),
            Checkbox(value:isChecked , onChanged: (bool ? value){
              setState(() {
                isChecked = value!;
                print(value);
              });
            })
          ],
        ),
      )
    );
  }
}
