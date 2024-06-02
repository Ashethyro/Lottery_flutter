import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random= Random();
  int x = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App',

          ),
          backgroundColor: Colors.lightBlueAccent,


        ),

          body:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: Text('Lottery number is 4')),
              const SizedBox(height: 20,),
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: x==4 ?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.done_all, color: Colors.green, size:35,),
                      const SizedBox(height: 15,),
                      Text('Congratulations you have won the lottery your number is   $x\n ', textAlign:TextAlign.center,),

                    ],
                  )
                      : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.error, color: Colors.red, size:35,),
                      Text('Better luck next time your number id  $x\n  try again', textAlign:TextAlign.center,),

                    ],
                  ),
                ),

              )


            ],
          ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x= random.nextInt(6);

            setState(() {});

          },
          child: const Icon(Icons.refresh),
        ),
      ),
      );
  }
}
