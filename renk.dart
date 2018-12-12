import 'package:flutter/material.dart';

void main(){
  runApp(
    renk(),
  );
}

class renk extends StatefulWidget {
  @override
  _renkState createState() => _renkState();
}

class _renkState extends State<renk> {

  var MyColor = Colors.red;

  degistir(){
    var re = Colors.red;
    if ( re == MyColor ){
    setState(() {
      MyColor = Colors.blue;
    });
    }
    else{
      setState(() {
        MyColor = Colors.red;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'degistir',
      home: Scaffold(
        body: Container(
          color: MyColor,
          child: Center(
            child: RaisedButton(
                child: Text("Basın", textDirection: TextDirection.ltr,),
                onPressed: (){
                  degistir();
                }
            ),
          )
          ),
      ),
    );
  }
}
