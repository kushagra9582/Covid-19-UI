import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelpCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container
      (
        height: 150,
        width: double.infinity,
//        color: Colors.red,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.4,
                  top: 20
              ),
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF60BE93),
                  Color(0xFF1B8D59)
                ]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: RichText(
                text:TextSpan(
                  children: [
                    TextSpan(
                        text: "Dial 100 for Medical Help!\n",style: Theme.of(context).textTheme.title.copyWith(
                        color: Colors.white
                    )
                    ),
                    TextSpan(
                        text: "If any symptoms appear",style: Theme.of(context).textTheme.body2.copyWith(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.7)
                    )
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0),
              child: SvgPicture.asset("icons/nurse.svg"),
            ),
            Positioned(
                top: 30,
                right: 10,
                child: SvgPicture.asset("icons/virus.svg")
            )
          ],
        )
    );
  }
}
