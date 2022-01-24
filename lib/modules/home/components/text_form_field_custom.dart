import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String labelText;
  final String prefixText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;


  TextFormFieldCustom({
    required this.labelText,
    required this.prefixText,
    required this.onChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: TextFormField(
        cursorColor: Color(0xFFC1007E),
        keyboardType: TextInputType.numberWithOptions(),
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xFFC1007E)),
            ),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.grey),
            prefixText: prefixText,
            prefixStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          CentavosInputFormatter(casasDecimais: 2)
        ],
      ),
    );
  }
}
