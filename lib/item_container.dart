import 'package:flutter/material.dart';

class StringBox extends StatelessWidget {
  final String string;
  final bool isDayColumn;

  const StringBox({Key key, this.string, this.isDayColumn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          isDayColumn == true ? Alignment.centerLeft : Alignment.centerRight,
      width: 160,
      height: 30,
      child: Text(
        string,
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
          fontWeight: isDayColumn == true ? FontWeight.w900 : FontWeight.normal,
        ),
      ),
    );
  }
}

class IconBox extends StatelessWidget {
  final IconData icon;

  const IconBox({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 30,
      child: Center(child: Icon(icon, size: 8.0)),
    );
  }
}
