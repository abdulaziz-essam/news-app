import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import "./sport_cards.dart";
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color.fromRGBO(239, 238, 239, 1.0),
      ),
      home: const Sport(),
    );
  }
}

class Sport extends StatelessWidget {
  const Sport({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 20,
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
                      child: const SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(child: Text('Outlined Card')),
                      ),
                    ),
                  )
                  ),
                ),
              );

          },
        ),
      ),
    );
  }

}