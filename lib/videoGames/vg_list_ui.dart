import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class VgUi extends StatefulWidget {
  const VgUi({Key? key}) : super(key: key);
  @override
  State<VgUi> createState() => Sport();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color.fromRGBO(239, 238, 239, 1.0),
      ),

    );
  }
}

class Sport extends State <VgUi> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child:Center(
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child:  SizedBox(
                            width:1000,
                            height: 500,
                            child:  Column(

                              children: [

                                Image.asset("images/arg.png", width: 600, height: 400,  fit: BoxFit.cover,alignment: Alignment.centerLeft)
                                ,
                                Text('grdgrdesgderssder Card'),

                              ],
                            )
                        ),
                      ),
                    ),
                  )
              ),

            );

          },
        ),
      ),
    );
  }

}