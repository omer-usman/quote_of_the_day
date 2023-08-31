import 'package:flutter/material.dart';
import 'package:quote_of_the_day/models/quote.dart';
import '../data/data.dart';

class QuoteBox extends StatefulWidget {
  final Quote data;
  const QuoteBox({required this.data});

  @override
  State<QuoteBox> createState() => _QuoteBoxState();
}

class _QuoteBoxState extends State<QuoteBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 0, top: 16),
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(7, 99, 99, 99),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
              blurRadius: 16,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 21,
                  backgroundImage: AssetImage(
                      widget.data.url), // Replace with your image asset
                ),
                SizedBox(width: 16),
                Text(
                  widget.data.user, // Replace with the actual username
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              widget.data.text,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 1),
            Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      widget.data.isLiked = !widget.data.isLiked;
                      print(widget.data.isLiked);
                      setState(() {
                        like();
                      });
                    },
                    icon: like())),
          ],
        ));
  }

  Icon like() {
    if (widget.data.isLiked == true) {
      favData.insert(0, widget.data);
      return Icon(Icons.favorite);
    }
    if (favData.isNotEmpty) favData.removeAt(favData.indexOf(widget.data));
    return Icon(Icons.favorite_border_outlined);
  }
}
