import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Card(
                        elevation: 20,
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const SizedBox(
                          width: 300,
                          height: 200,
                          child:
                          Center(child: Text('Sports', style: TextStyle(fontSize: 50))),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Card(
                    elevation: 20,
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const SizedBox(
                      width: 300,
                      height: 200,
                      child:
                      Center(child: Text('Sports', style: TextStyle(fontSize: 50))),
                    )),
                  ],
                ),

              ],
            ),

          ),
        ),


        );


  }
}