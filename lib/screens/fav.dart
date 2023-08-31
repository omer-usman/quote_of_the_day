import 'package:flutter/material.dart';
import 'package:quote_of_the_day/widgets/quoteBox.dart';
import '../data/data.dart';
import '../models/quote.dart';

class Fav extends StatelessWidget {
  List<Quote> dataView = favData;
  Fav({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                ),
                for (Quote x in dataView) QuoteBox(data: x),
              ]),
        ),
      ),
      // bottomNavigationBar: bottomNav(),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: Text("(❁´◡`❁)",
          style: TextStyle(
            fontFamily: 'Raleway',
            letterSpacing: 1,
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 0, 0, 0),
          )),
    );
  }

  // BottomNavigationBar bottomNav() {
  //   return BottomNavigationBar(
  //     elevation: 0,
  //     items: <BottomNavigationBarItem>[
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.home),
  //         label: '',
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.favorite),
  //         label: '',
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.person),
  //         label: '',
  //       ),
  //     ],
  //   );
  // }
}
