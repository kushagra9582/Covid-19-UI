import 'package:flutter/material.dart';

class Aditi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aditi Sample"),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.image), onPressed: (){})
        ],
        elevation: 1
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 120,
                  width: 120,

                  child: Column(
                    children: <Widget>[
                      Text("Aditi Shukla",style: TextStyle(color: Colors.white),),
                      Text("8667636894",style: TextStyle(color: Colors.white),),
                      Text("Noida",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 120,
                  width: 120,

                )
              ],
            ),
          )
        ],
      )

    );
  }
}

