import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';


Widget defaultButton({
  double width = double.infinity,
  @required String? text,
  @required void Function()? function,
})

{
  return Container(
    height: 48,
    width: width,
    decoration: BoxDecoration(
      color: HexColor('#253975'),
      borderRadius: BorderRadius.circular(16),
    ),
    child: MaterialButton(
      onPressed: function,
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15
        ),
      ),

    ),
  );
}

Widget defaultTextButton({
  @required void Function()? function,
  @required String? text,
}) {
  return TextButton(
      onPressed: function,
      child: Text(
          text!,
        style: TextStyle(
          color: HexColor('#253975'),
        ),
      )
  );
}


Widget defaultFormField({
  @required String? text,
  @required TextEditingController? controller,
  IconData? prefix,
  TextInputType? type ,
  Widget? suffix,
  double width = double.infinity,
  EdgeInsets? edgeInsets,
}) => SizedBox(
  width: width,
  child:   TextFormField(
    keyboardType: type,
    controller: controller,
    decoration: InputDecoration(
      label: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '$text',
          style: TextStyle(
            color: HexColor('#9A9696'),
            fontSize: 12
          ),
        ),
      ),
      prefixIcon: prefix != null ? Icon(prefix) : null,
      suffixIcon: suffix ,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      contentPadding: edgeInsets,

    ),
  ),
);

Widget back({void Function()? onTap,}) => Padding(
  padding: const EdgeInsets.only(left: 16),
  child: InkWell(
    onTap: onTap != null ? onTap :  (){
      Get.back();
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: HexColor('#F6F6F8')
      ),
      child: Center(
        child: Icon(
          Icons.arrow_back_ios_rounded,
          size: 25,
          color: HexColor('#4E486A'),
        ),
      ),
    ),
  ),
);