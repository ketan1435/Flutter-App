import 'package:flutter/material.dart';
import 'package:flutterapp/utils/colors.dart';
import 'package:flutterapp/utils/textstyle.dart';
class TextFields extends StatefulWidget {
  final String? name;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
   TextFields({super.key, this.name, this.controller, this.validator});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        height: 63,
        child: TextFormField(
          controller:widget.controller,
          validator: widget.validator,
          decoration: InputDecoration(
            fillColor: AppColor.textfieldColor2,
            filled: true,
            labelText:widget.name??"Enter Your Details",
              labelStyle:TextHelper.h7,
              helperText: "",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color:AppColor.borderColor1)
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color:AppColor.borderColor1)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color:AppColor.borderColor2)
              )
          ),
        ),
      ),
    );
  }
}
