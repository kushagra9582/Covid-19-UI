import 'package:covid_19/constsnts.dart';
import 'package:covid_19/widget/weeklyChart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String num = "3967";
  String percentage = "5.6%";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailsAppBar(context),
      body: ListView(
        children:<Widget>[ Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25) ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05)
                  ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildTitleWithMoreIcon("New Cases", "more"),
                    SizedBox(height: 15,),
                    buildCaseNumber(context),
                    SizedBox(height: 15,),
                    Text("From Health Center", style: TextStyle(fontWeight: FontWeight.w200,color: kPrimaryColor,fontSize: 16),),
                    SizedBox(height: 10,),
                    WeeklyChart(),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buildRichText("From Last Week","6.43"),
                        buildRichText("Recovery Rate","9.43")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,21),
                      blurRadius: 54,
                      color: Colors.black.withOpacity(0.05)
                    ),
                  ]
                ),
                child: Column(
                  children: <Widget>[
                    buildTitleWithMoreIcon("Global Map", "map"),
                  ],
                ),
              )
            ],
          ),
        ),
    ],
      ),

    );
  }

  RichText buildRichText(String title,String percentage)
  {
    return RichText(
        text: TextSpan(
            children: [
              TextSpan(
                text: "$percentage% \n",
                style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                ),
              ),
              TextSpan(
                  text: title,
                  style: TextStyle(
                      color: kTextMediumColor,
                      height: 1.5
                  )
              )
            ]
        )
    );
  }

  Row buildCaseNumber(BuildContext context){
    return Row(
      children: <Widget>[
        Text("${num} ",style: Theme.of(context).textTheme.display3.copyWith(
            color: kPrimaryColor)
        ),
        Text(percentage,style: TextStyle(color: kPrimaryColor),),
        SvgPicture.asset("icons/increase.svg")
      ],
    );
  }

  Row buildTitleWithMoreIcon(String title, String svgname){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title,style: TextStyle(color: kTextMediumColor,
            fontWeight: FontWeight.w600,
            fontSize: 15
        ),
        ),
        SvgPicture.asset("icons/${svgname}.svg")
      ],
    );
  }

  AppBar buildDetailsAppBar(BuildContext context)
  {
    return AppBar(
      backgroundColor: kBackgroundColor,
      leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: kPrimaryColor,), onPressed: (){
        Navigator.pop(context);
      }),
      actions: <Widget>[
        IconButton(icon: SvgPicture.asset("icons/search.svg"), onPressed: (){},
        )
      ],
    );
  }
}
