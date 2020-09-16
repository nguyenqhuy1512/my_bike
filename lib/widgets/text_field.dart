import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class TextFieldCustom extends StatelessWidget {
  final String texthint;
  String textContent;
  TextEditingController controller;
  String textunit;
  bool input_number;
  TextFieldCustom({@required this.controller,this.textContent, this.texthint,this.textunit,@required this.input_number});
  @override
  Widget build(BuildContext context) {
    controller.text = textContent != null ? textContent : "";
    return Container(
      height: 50.0,
      alignment: Alignment.centerRight,
      child: input_number != true?
        TextField(
          controller: controller,
          decoration: new InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)),
              hintText: '${texthint}',
              suffixText: textunit != null? '${textunit}' : null ,
              suffixStyle: const TextStyle(color: Colors.black)),
        ) :
        TextField(
          controller: controller,
          inputFormatters: [new WhitelistingTextInputFormatter(RegExp("[0-9]")),],
          decoration: new InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)),
              hintText: '${texthint}',
              suffixText: textunit != null? '${textunit}' : null ,
              suffixStyle: const TextStyle(color: Colors.black)),
        )
    );
  }
}