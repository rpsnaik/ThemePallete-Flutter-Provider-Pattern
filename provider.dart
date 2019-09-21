import 'package:flutter/material.dart';

class AppLogic extends ChangeNotifier{
  bool isDark = false;
  Color scaffColor = Colors.blue;

  void changeScaffColor(Color color){
    scaffColor = color;
    notifyListeners();
  }
  void changeTheme(bool dark){
    isDark = dark;
    notifyListeners();
  }
  AppLogic();
}

class Tiles {
  Color color;
  String title;
  bool istextActive;

  Widget buildWidget() {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: istextActive ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  Tiles({this.title, this.color, this.istextActive});
}