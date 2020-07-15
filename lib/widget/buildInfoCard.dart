import 'package:covid_19/screens/detailsScreen.dart';
import 'package:flutter/material.dart';

import 'infoCard.dart';

class BuildInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap
      (
      runSpacing: 20,
      spacing: 20,
      children: <Widget>[
        InfoCard(title: "Confirmed Cases",
          iconColor: Color(0xFFFF8C00),
          infectednum: 85940,
          press:(){

          } ,
        ),
        InfoCard(title: "Total Deaths",
          iconColor: Color(0xFFFF2D55),
          infectednum:2752 ,
          press:(){} ,
        ),
        InfoCard(title: "Total Recovered",
          iconColor: Color(0xFF50E3C2),
          infectednum:30153 ,
          press:(){} ,
        ),
        InfoCard(title: "New Cases",
          iconColor: Color(0xFF5856D6),
          infectednum:3967 ,
          press:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
          } ,
        ),

      ],
    );
  }
}
