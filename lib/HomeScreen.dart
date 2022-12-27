import 'package:calculator/Constants.dart';
import 'package:calculator/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5 ,),
          child: Column(
            children:[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top
                      : 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(userInput.toString(),style: TextStyle(fontSize: 30, color: Colors.white),)),
                      Text(answer.toString(),style: TextStyle(fontSize: 30, color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        MyButton(title: 'AC', onPress: (){
                          userInput = '';
                          answer='';
                          setState(() {

                          });
                        },),
                        MyButton(title: '+/-', onPress: (){
                          userInput += '+/-';
                          setState(() {

                          });

                        },),
                        MyButton(title: '%', onPress: (){
                          userInput += '%';
                          setState(() {

                          });
                        },),
                        MyButton(title: '/',color: Color(0xffffa00a),onPress: (){
                          userInput += '/';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '7', onPress: (){
                          userInput += '7';
                          setState(() {

                          });
                        },),
                        MyButton(title: '8', onPress: (){
                          userInput += '8';
                          setState(() {

                          });
                        },),
                        MyButton(title: '9', onPress: (){
                          userInput += '9';
                          setState(() {

                          });
                        },),
                        MyButton(title: '*',color: Color(0xffffa00a),onPress: (){
                          userInput += '*';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '4', onPress: (){
                          userInput += '4';
                          setState(() {

                          });
                        },),
                        MyButton(title: '5', onPress: (){
                          userInput += '5';
                          setState(() {

                          });
                        },),
                        MyButton(title: '6', onPress: (){
                          userInput += '6';
                          setState(() {

                          });
                        },),
                        MyButton(title: '-',color: Color(0xffffa00a),onPress: (){
                          userInput += '-';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '1', onPress: (){
                          userInput += '1';
                          setState(() {

                          });
                        },),
                        MyButton(title: '2', onPress: (){
                          userInput += '2';
                          setState(() {

                          });
                        },),
                        MyButton(title: '3', onPress: (){
                          userInput += '3';
                          setState(() {

                          });
                        },),
                        MyButton(title: '+',color: Color(0xffffa00a),onPress: (){
                          userInput += '+';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '0', onPress: (){
                          userInput += '0';
                          setState(() {

                          });
                        },),
                        MyButton(title: '.', onPress: (){
                          userInput += '.';
                          setState(() {

                          });
                        },),
                        MyButton(title: 'DEL', onPress: (){
                          userInput = userInput.substring(0 , userInput.length-1);

                          setState(() {
                            
                          });
                        },
                        ),
                        MyButton(title: '=',onPress: (){
                          equalPress();
                          setState(() {

                          });
                        },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
  void equalPress(){
    String finalUserInput = userInput.replaceAll('*', '*');
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel= ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer= eval.toString();


  }
}
// Text('Anas', style: TextStyle(fontSize: 30,color: gray)),
// Text('Hamza', style: headingText,),


// Container(
//   height: 50,
//   decoration: BoxDecoration(
//     color: Colors.pink,
//     borderRadius: BorderRadius.circular(10),
//   ),
//   child: Center(child: Text('Abdul-Rahman', style: headingText,)),
// ),