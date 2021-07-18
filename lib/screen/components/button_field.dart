import 'package:flutter/material.dart';

class ButtonField extends StatelessWidget {
  final String text;
  final bool primary;

  const ButtonField({ this.text = '', this.primary = true });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: 60,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: primary ? Colors.greenAccent : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: (primary ? null : Border.all(color: Colors.greenAccent, width: 3)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: primary ? Colors.white : Colors.greenAccent),
          ),
        ),
      ),
    );
  }
  /*
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 60,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: primary ? Colors.greenAccent : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: primary ? Colors.white : Colors.greenAccent),
        ),
      ),
    );
  }
  */
}