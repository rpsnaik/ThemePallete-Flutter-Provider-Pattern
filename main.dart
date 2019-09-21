import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snake_game/provider.dart';

void main() {
  runApp(MaterialApp(
    home: ChangeNotifierProvider(
      builder: (_) => AppLogic(),
      child: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final applogicObj = Provider.of<AppLogic>(context);
    return MaterialApp(
      theme: applogicObj.isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: applogicObj.scaffColor,
            title: Text("Theme Pallete"),
            centerTitle: true,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 15.0),
                  child: Container(
                    margin: EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.view_week, color: Colors.white,),
                        Spacer(flex: 1,),
                        Text(
                          "Dark Theme",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(flex: 3,),
                        Switch(
                          onChanged: (val) {
                            applogicObj.changeTheme(val);
                          },
                          value: applogicObj.isDark,
                          activeColor: applogicObj.scaffColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 400.0,
                  padding: EdgeInsets.all(20.0),
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.red);
                        },
                        child: Tiles(
                                title: "Red",
                                color: Colors.red,
                                istextActive: true)
                            .buildWidget(),
                      ),
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.green);
                        },
                        child: Tiles(
                                title: "Green",
                                color: Colors.green,
                                istextActive: true)
                            .buildWidget(),
                      ),
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.orange);
                        },
                        child: Tiles(
                                title: "Orange",
                                color: Colors.orange,
                                istextActive: true)
                            .buildWidget(),
                      ),
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.brown);
                        },
                        child: Tiles(
                                title: "Brown",
                                color: Colors.brown,
                                istextActive: true)
                            .buildWidget(),
                      ),
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.yellow);
                        },
                        child: Tiles(
                                title: "Yellow",
                                color: Colors.yellow,
                                istextActive: false)
                            .buildWidget(),
                      ),
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.pink);
                        },
                        child: Tiles(
                                title: "Pink",
                                color: Colors.pink,
                                istextActive: true)
                            .buildWidget(),
                      ),
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.indigo);
                        },
                        child: Tiles(
                                title: "Indigo",
                                color: Colors.indigo,
                                istextActive: true)
                            .buildWidget(),
                      ),
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.purple);
                        },
                        child: Tiles(
                                title: "Purple",
                                color: Colors.purple,
                                istextActive: true)
                            .buildWidget(),
                      ),
                      InkWell(
                        onTap: () {
                          applogicObj.changeScaffColor(Colors.blue);
                        },
                        child: Tiles(
                                title: "Blue",
                                color: Colors.blue,
                                istextActive: true)
                            .buildWidget(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
