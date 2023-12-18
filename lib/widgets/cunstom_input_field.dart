import 'package:flutter/material.dart';

class CunstomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CunstomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: (value) {
          formValues[formProperty] = value;
        },
        validator: (value) {
          if (value == null) return 'este campo es obligatorio';
          return value.length < 3
              ? 'campo no puede ser menor a 3 caracteres'
              : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          counterText: counterText,
          // prefixIcon: Icon(Icons.verified_user_sharp),
          // icon: Icon(Icons.assignment_ind_rounded),
          icon: icon == null ? null : Icon(icon),
          // suffixIcon: Icon(Icons.group_sharp),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(10),
          //   topRight: Radius.circular(10),
          // ))
        ));
  }
}
