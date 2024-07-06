import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CastomTextField extends StatelessWidget {
  var controller = TextEditingController();
  String hint;
  IconData prefixicon;
   CastomTextField({super.key,
   required this.controller,
     required this.hint,
     required this.prefixicon
   });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
          border: const OutlineInputBorder(
          ),
          hintText: hint,
          prefixIcon: Icon(prefixicon ,color: Colors.deepPurpleAccent,)
      ),
      validator: (value){
        if(value == null|| value.isEmpty){
          return ' This field Can`t be empty';
        }return  null;
      },
    );
  }
}
