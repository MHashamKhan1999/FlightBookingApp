import 'package:flutter/material.dart';
import 'app_styles.dart';



class AppDoubleTextWidget extends StatelessWidget {

  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headlineTextStyle1,
        ),
        InkWell(
            onTap: (){
              print("You are tapped");
            },
            child: Text(
              smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            ))
      ],
    );
  }
}
