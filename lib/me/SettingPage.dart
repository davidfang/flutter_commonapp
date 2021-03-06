import 'package:commonapp/app/me_color.dart';
import 'package:commonapp/commonwidget/cell/common_cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: MEColor.white,
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Text("Setting1", style: TextStyle(fontSize: 20)),
                  Expanded(child: Container()),
                  CupertinoSwitch(
                    value: false,
                    onChanged: (bool value) {},
                  )
                ],
              ),
            ),
            Container(
              color: MEColor.white,
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Text("Setting2", style: TextStyle(fontSize: 20)),
                  Expanded(child: Container()),
                  CupertinoSwitch(
                    value: true,
                    onChanged: (bool value) {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            CommonCell(
              title: "清除缓存",
              subtitle: "1.2MB",
              onPressed: () {
                print("hhh");
              },
            )
          ],
        )
    );
  }
}
