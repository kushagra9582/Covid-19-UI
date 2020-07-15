import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constsnts.dart';
import 'buildHelpCard.dart';

class BuildPreventionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding
      (
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Preventions",
              style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.bold)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              PreventionCard(svgname: "hand_wash",message: "Wash Hands Regularly",),
              PreventionCard(svgname: "use_mask",message: "Use Masks",),
              PreventionCard(svgname: "Clean_Disinfect",message: "Clean Disinfect",)
            ],
          ),
          SizedBox(height: 40,),
          HelpCard(),

        ],
      ),
    );
  }
}
class PreventionCard extends StatelessWidget {
  final String svgname;
  final String message;

  const PreventionCard({Key key, this.svgname, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset("icons/${svgname}.svg"),
        Text(message,style: Theme.of(context).textTheme.body2.copyWith(
            color: kPrimaryColor
        ),)
      ],
    );
  }
}

