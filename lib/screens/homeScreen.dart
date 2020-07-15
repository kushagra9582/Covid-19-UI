import 'package:covid_19/constsnts.dart';
import 'package:covid_19/widget/buildInfoCard.dart';
import 'package:covid_19/widget/buildPreventionCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:  ListView(
        children:<Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 40),
                //height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.03),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)
                    )
                ),
                child: BuildInfoCard(),
              ),
              SizedBox(height: 20,),
              BuildPreventionCard(),
            ],
          ),
        ],
      ),

    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(.03),
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("icons/menu.svg"),
          onPressed: (){}),
      actions: <Widget>[
        IconButton(icon: SvgPicture.asset("icons/search.svg"), onPressed: (){})
      ],
    );
  }

}



