import 'package:flutter/material.dart';
import 'package:flutterapp/utils/colors.dart';
class CommonButton extends StatefulWidget {
  final String?name;
  final Function()? onpress;
   CommonButton({super.key, this.name, this.onpress});

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Center(
      child: GestureDetector(
        onTap:widget.onpress,
        child: Container(
              height: mediaQuery.size.height*0.04,
              width: mediaQuery.size.width*0.3,
          decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(11),
            color: AppColor.containerColor1
          ),
          child:Center(child: Text(widget.name??"Button",style:TextStyle(color: AppColor.textcolor),)) ,
        ),
      ),
    );
  }
}
