import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String string;
  final bool isEveningColumn;
  final bool isDayColumn;
  final bool isThinColumn;
  final bool isIconColumn;
  final IconData icon;

  const ItemContainer(
      {Key key,
      this.string,
      this.isEveningColumn,
      this.isThinColumn,
      this.icon,
      this.isDayColumn,
      this.isIconColumn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isEveningColumn == true
          ? Alignment.centerRight
          : Alignment.centerLeft,
      width: isThinColumn == true ? 60 : 100,
      height: 30,
      child: isIconColumn == true
          ? Center(child: Icon(icon, size: 8.0))
          : Text(
              string,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                fontWeight:
                    isDayColumn == true ? FontWeight.w900 : FontWeight.normal,
              ),
            ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final IconData icon;

  const IconContainer({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 30,
      child: Center(child: Icon(icon, size: 8.0)),
    );
  }
}
