import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainTourPage extends StatefulWidget {
  const MainTourPage({Key? key}) : super(key: key);

  @override
  State<MainTourPage> createState() => _MainTourPageState();
}

class _MainTourPageState extends State<MainTourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Country'),
                      Text('City'),
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
