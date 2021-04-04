/*
Application 1
50 pts - 10 each question
Create an mobile app that meets the following criteria:
1. It must have a minimum of two pages.
2. It must include a minimum of two pictures.
3. One page must include tabs with a minimum of two tabs.
4. Every page must include text.
5. Creativity and content count towards points
The topic can be on the topic of your choice.
If you copy information from the internet, please note the source.
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Application 1',
    theme: ThemeData(
      backgroundColor: Color(0xff69be28),
    ),
    home: MyStatelessWidget()
  ));
}

class MyStatelessWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final Shader linearGradient = LinearGradient(
      colors: <Color>[Colors.pink, Colors.yellow, Colors.red],
    ).createShader(Rect.fromLTWH(40.0, 20.0, 200.0, 60.0));

    return Scaffold(
      backgroundColor: Color(0xff69be28),
      appBar: AppBar(title: Text("Amanda Faulconer",
      style: TextStyle(
        fontSize: 40,
          foreground: Paint()..shader = linearGradient
      ),
      ),
        backgroundColor: Colors.lightBlue[900],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView(children: [
          wtext1(),
          wtext2(),
        ],),
      ),
      );
  }
}

  // text section 1
  Widget wtext1(){
    return Container(
      padding: EdgeInsets.all(5.0),
      color: Colors.lightBlue[900],
      child:
        Column(
          children: [
            Container(
              child: Text("About Me",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                 )
            )
            ),
            Container(
              child: Text("My favorite pizza is peperoni with pineapple and jalapenos."
                  "I enjoy wine very much. My favorite food would have to be tacos. "
                  "I make them at least one per week. This year I grew my own garden"
                  "which allowed me to have almost everything I needed fresh and available.",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                )
              )
            ),
            Container(
              child: Image.asset("images/dog.jpg"),
            ),
          ], // children
        ),
    );
  }

  // text section 2
  Widget wtext2(){
    return Container(
      padding: EdgeInsets.all(5.0),
      color: Colors.lightBlue[900],
      child:
      Column(
        children: [
          Container(
              child: Text("More About Me",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  )
              )
          ),
          Container(
              child: Text("I have two dogs named Paco and Rincon. They are both "
                  "chihuahuas. They do just about everything with me. In the summer "
                  "I take the hiking and paddle boarding a lot. In the winter, I like"
                  "to ski and snowboard a lot." ,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  )
              )
          ),
          Container(
            child: Image.asset("images/winter.jpg"),
          ),
        ], // children
      ),
    );
  }