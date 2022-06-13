import 'package:flutter/material.dart';

class Tcontainer extends StatelessWidget {
  const Tcontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pics = [
      _rendImage("02.jpg"),
      _rendImage("04.jpg"),
      _rendImage("05.jpg"),
      // _rendImage("06.jpg"),
      // _rendImage("07.jpg"),
      // _rendImage("08.jpg"),
      // _rendImage("09.jpg"),
      // _rendImage("010.jpg"),
    ];
    // pics.add()

    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(width: 1.0, color: Colors.black87),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Wrap(
        direction: Axis.horizontal,
        children: pics,
      ),
    );
  } // End Of Build function

  Widget _rendImage(String tLink) {
    return Container(
        width: 200.0,
        height: 200.0,
        margin: EdgeInsets.all(5.0),
        // padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(width: 1.0, color: Colors.black87),
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(tLink),
            fit: BoxFit.cover,
          ),
        ),
        child: null);
  }
}
