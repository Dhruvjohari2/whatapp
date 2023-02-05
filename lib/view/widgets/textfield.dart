import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {
  const TextFieldInput({Key? key}) : super(key: key);

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  String _number = " ";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.grey,
          ),
          color: Colors.black12,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextFormField(
          style: const TextStyle(
            fontSize: 20,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          onChanged: (text) => _number = text,
          maxLength: 1,
          validator: (value) {
            if (value == null || value.length < 2) {
              return null;
            }
            return null;
          },
        ),
      ),
    );
  }
}
