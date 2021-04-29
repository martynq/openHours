import 'package:flutter/material.dart';

class StringBox extends StatelessWidget {
  final String string;

  const StringBox({Key key, this.string}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 30,
      child: Text(
        string,
        style: TextStyle(fontSize: 11.0, color: Colors.black),
      ),
    );
  }
}

class IconBox extends StatelessWidget {
  final IconData icon;

  const IconBox({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 20,
      child: Icon(icon, size: 8.0),
    );
  }
}
