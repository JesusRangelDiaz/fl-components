import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? helperText;
  final String? labelText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType1;
  final bool isPassword;
  
  const CustomInputField({
    super.key, this.hintText, this.helperText, this.labelText, this.icon, this.suffixIcon, this.keyboardType1, this.isPassword=false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      keyboardType: keyboardType1,
      obscureText: isPassword,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => {},
      validator: (value) {
        if (value == null) return 'Ete campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}